//dz №10 завдання 4 (взаємне розташування двох площин)
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


function t = mutual2planes(s1,s2)
    s1 = plane_eq(s1)
    s2 = plane_eq(s2)    //переведення рядка загального рівняння площин в вектор коефікцієнтів
    k = s1(1)/s2(1)
    t = %t
    for i=2:3
        if ~(s1(i)/s2(i) == k)   //перевірка пропорційності коефіцієнтів
            t = %f
            break
        end
    end
    x = [1:10]
    y = [1:10]
    deff('z = f1(x,y)','z = (s1(1)*x + s1(2)*y + s1(4))/s1(3)')
    deff('z = f2(x,y)','z = (s2(1)*x + s2(2)*y + s2(4))/s2(3)')   //побудова
    fplot3d(x,y,f1,alpha = 5,theta = 31)
    fplot3d(x,y,f2,alpha = 5,theta = 31)  
    if t 
        if s1(4)/s2(4) == k then
            disp("співпадають")
        else
            disp("паралельні")  
        end    
    else
        disp("перетинаються")
    end          
endfunction









