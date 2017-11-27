//dz №10 завдання 4 (взаємне розтащування 3-х площин)
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


function t = mutual3planes(s1,s2,s3)
    s1 = plane_eq(s1)
    s2 = plane_eq(s2)
    s3 = plane_eq(s3)
    s = [s1(1:3);s2(1:3);s3(1:3)]
    r = rank(s)
    select r
    case 1 then
        t = 'паралельні'
    case 2 then
        if detr(s) == 0 
            t = "дві перетинаються, а третя паралельна"
        else
            t = "кожні дві площини перетинаються, але не мають спільної точки"
        end
    case 3 then
        t = "площини перетинаються в одній точці"                
    end
    x = [-10:10]
    y = [-10:10]
    deff('z = f1(x,y)','z = (s1(1)*x + s1(2)*y + s1(4))/s1(3)')
    deff('z = f2(x,y)','z = (s2(1)*x + s2(2)*y + s2(4))/s2(3)')   //побудова
    deff('z = f3(x,y)','z = (s3(1)*x + s3(2)*y + s3(4))/s3(3)')
    fplot3d(x,y,f1,alpha = 5,theta = 31)
    fplot3d(x,y,f2,alpha = 5,theta = 31) 
    fplot3d(x,y,f3,alpha = 5,theta = 31)
endfunction




