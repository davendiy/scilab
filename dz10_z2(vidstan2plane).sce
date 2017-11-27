//dz №10 завдання 2 (відстань від точки до площини)
//written by David Zashkolnyi, 1 course, 16.11.17


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



function l = par_equation(s,p)
    /*функція знаходження відстані від точки до площини
    приймає на вхід рядок загального рівняння площини
    видає відстань
    */ 
    l = plane_eq(s)   //переведення рядка в список коефіцієнтів
    a = l(1)
    b = l(2)
    c = l(3)
    d = l(4)
    m = -sign(d)/sqrt(a^2 + b^2 + c^2)   //розрахунок нормуючого множника
    a1 = a*m
    b1 = b*m      //розрахунок косинусів кутів
    c1 = c*m
    d = -d*m
    deff('z = f(x,y)','z = (a*x + b*y + d)/c')   //побудова
    x = [1:10]
    y = [1:10]
    
    param3d(p(1),p(2),p(3))
    e = gce()
    e.mark_mode = 'on'
    e.mark_style = 0 //задання параметрів щоб гарно побудувати точки
    e.mark_size = 3
    fplot3d(x,y,f,alpha = 5,theta = 31)
    l = (p(1) * a1 + p(2) * b1 + p(3) * c1 - d)    //розрахунок відстані за формулою
endfunction
