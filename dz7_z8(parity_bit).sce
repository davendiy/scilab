//dz №7 завдання 8 (біт парності)
//written by David Zashkolnyi, 1 course 
//Taras Shevchenko National University of Kyiv
//Faculty of Mechanics and Mathematics
//28.10.17

function t=parity_bit(a)   //вводиться рядок числа в 2 системі числення
    b=0
    for i=1:length(a)       //підрахунок суми всіх цифр числа
        b=b+evstr(part(a,i))
    end
    if modulo(b,2)==0 then  //якщо сума парна - біт парності=0
        t=a+'0'            //інакше=1
    else
        t=a+'1'    
    end
endfunction
