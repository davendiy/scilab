//dz №5 завдання 1
//written by David Zashkolnyi, 1 course, 11.10.17

function y=chisla_Ferma(n,a)
    y2=a^(n-1)-1
    y2=modulo(y2,n)          //функція з першого завдання
    if y2==0 then
        y=%t
    else y=%f
    end
endfunction

k=0
for i=1:1:10^5
    y=chisla_Ferma(i,2)     //перевірка всіх чисел до 10^6
    disp(i)
    //disp(y)
    if y
        k=k+1      //якщо число правильне
    end    
end

disp(k)
