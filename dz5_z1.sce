//dz №5 завдання 1
//written by David Zashkolnyi, 1 course, 11.10.17

function y=chisla_Ferma(n,a)
    y2=a^(n-1)-1
    y2=modulo(y2,n)       //умова псевдопростого числа
    if y2==0 then
        y=%t
    else y=%f
    end
endfunction
