//dz №7 завдання 6 (check digit)
//written by David Zashkolnyi, 1 course 
//Taras Shevchenko National University of Kyiv
//Faculty of Mechanics and Mathematics
//28.10.17


function t=check_ISBN10(a)    //вводиться будь-яке число
    a=string(a)    //переведення числа в рядок для простоти розрахунків
    a=strrev(a)    //обернення рядка по тій же причині
    t=%f
    s=0
    if length(s)==10 then   //перевірка відбувається лише якщо число 10-цифрове
        
        for i=1:length(a)    
            s=s+evstr(part(a,i))*i    //сума цифер помножених на їх номер
        end
        if modulo(s,11)==0 then      //якщо остача=0 знач число є номером
            t=%t
        end
    end    
endfunction
