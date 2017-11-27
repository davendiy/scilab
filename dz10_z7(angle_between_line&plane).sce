//dz №10 завдання 7 (кут між прямою і площиною)
//written by David Zashkolnyi, 1 course, 27.11.17


function l = plane_eq(s)   //функція перетворення рядка рівняння площини у вектор коефіцієнтів (з дз6 з3)
    x=strindex(s,"x")     //пошук символа х в рядку
    if size(x)>0 then
        a=part(s,[1:x-1])   //якщо х наявний то вирізається число до х і присваюється змінній
        a=evstr(a)    //переведення строки в число
    else
        a=0    //якщо х в рівнянні не наявний то змінній присваюється 0
        x=0
    end

    y=strindex(s,"y") 

    if size(y)>0 then
        b=part(s,[x+1:y-1])    //те саме для у
        b=evstr(b)
    
    else
        b=0
    end

    z=strindex(s,"z")
    
    if size(z)>0 then
        c = part(s,[y+1:z-1]) //те саме для z
        c = evstr(c)
    else
        c = 0
    end

    dor = strindex(s,'=')

    d=part(s,[z+2:length(s)])  //D знаходиться після = тому він є завжди
    d= -evstr(d)
    l = [a,b,c,d]
endfunction


function a = angle_line(s1,u)
    s1 = plane_eq(s1)
    a = ((sum(s1(1:3).*u)/sqrt(sum(s1(1:3).^2)*sum(u.^2))))
    a = asin(a)
endfunction
