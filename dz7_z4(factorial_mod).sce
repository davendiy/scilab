//dz №7 завдання 4 (факторіал за модулем)
//written by David Zashkolnyi, 1 course, 22.10.17

format(25)
s=1
a=10^5
n=5463458053
for i=1:1:a
    
    s=s*i        //послідовне обчислення факторіала за модулем n
    s=modulo(s,n)
    if modulo(i,1000)==0 then    //інформація для юзера
        disp("i="+string(i)+"     s="+string(s))
        
    end
    
end

disp("s="+string(s))
