//dz №10 завдання 3 (кут між площинами)
//written by David Zashkolnyi, 1 course, 16.11.17

function [a,b,c,d] = plane_eq(s)   //функція перетворення рядка рівняння площини у вектор коефіцієнтів (з дз6 з3)
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
        b = 0
    end

    dor = strindex(s,'=')

    d=part(s,[z+1:length(s)])  //D знаходиться після = тому він є завжди
    d= -evstr(d)
endfunction


function a = angle(s1,s2)  //функція знаходження кута між площинами, приймає на вхід два рядки: рівнання площин у загальному вигляді
    x1 = plane_eq(s1)
    x2 = plane_eq(s2)
    a = acos((x1(1)*x2(1)+x1(2)*x2(2)+x1(3)*x2(3))/sqrt((x1(1)^2+x1(2)^2+x1(3)^2)*(x2(1)^2+x2(2)^2+x2(3)^2)))  //розрахунок кута за формулою
endfunction

    
