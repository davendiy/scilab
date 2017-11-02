//dz №7 завдання 1 (день для будь-кої дати)
//written by David Zashkolnyi, 1 course, 22.10.17

// даний спосіб буде працювати тільки для григоріанського календаря, тобто для всіх дат після приблизно 1700 року
// спосіб, взятий мною з книжки "магия чисел. ментальные исчисления" Артура Бенжамина,
// грунтується на тому, що кожний рік має свій код, який розраховується, а кожне століття і місяць мають уже розрахований код
// номер дня = код століття + код року + код місяця за модулем 7
// даний спосіб працює швидше і враховує всі особливості григоріанського календаря + удобний для усного розрахунку



function day=calendarDay(s)
timer()
months_kod=[6,2,2,5,0,3,5,1,4,6,2,4]  //коди місяців, наприклад код липня (7 місяць) = months_kod(7) = 5
                                      //якщо рік високосний, то код січня = 5, а лютого = 1

centuries_kod=[17,5,18,3,19,1,20,0]   //коди століть: для кожного століття - наступний елемент (18 ст - 1700-ті роки - код=5)                                      //код століття повторюється кожні 400 років
days_name=["monday",'tuesday','wednesday','thursday','friday','saturday','sunday']


d=evstr(part([s],1:2))   //конвертація в число номера дня
m=evstr(part([s],4:5))   //конвертація в число номера місяця 
y=evstr(part([s],7:10))  //конвертація в число номера року


if (modulo(y,4)==0) & ~(modulo(y,400)==0) then    //якщо рік високосний, то код січня = 5, а код лютого = 1
    month_kod(1)=5
    month_kod(2)=1
end

y1=modulo(y,100)    //розрахунок кода року за формулою з книжки
y1=y1+int(y1/4)
y1=modulo(y1,7)

y2=int(y/100)     //приведення номеру століття в інтервал 17..20
while y2>20
    y2=y2-4
end

y2_pos=find(centuries_kod==y2)+1   //пошук кода століття в матриці кодів


m=months_kod(m) 


d=d+m+y1+centuries_kod(y2_pos)   //розрахунок кода дня
d=modulo(d,7)                  //оскільки дні повторюються кожні 7 днів то знаходимо остачу від ділення на 7
if d==0 then 
    d=7
end
day=days_name(d)
disp(timer())
endfunction
