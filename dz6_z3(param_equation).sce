//dz №6 завдання 3 (параметричне рівняння прямої)
//written by David Zashkolnyi, 1 course, 27.10.17

//вводиться загальне рівняння у вигляді Ах+Ву=-С
//наприклад для par_equation("10х-5y=8") виводить 
//x=1+5t    y=0.4+10t
// для par_equation("10х=8") - x=0.8+0t y=0+10t
// для par_equation("10у=8") - x=0+10t  y=0.8+0t
//тобто функція універсальна
function par_equation(s)
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

z=strindex(s,"=")


c=part(s,[z+1:length(s)])  //C знаходиться після = тому він є завжди
c=evstr(c)

x0=1
if b==0 then   //якщо рівняння виду ах=с
    x0=c/a     
    y0=0
end
if a==0 then  //якщо рівняння виду by=c
        y0=c/b
        x0=0
       
    else        
        y0=(-a+c)/b  //якщо рівняння виду ax+by=c
    
end


if -b>=0 then   //якщо коеф при у>0 то перед його виведенням в формулу необхідно поставити "+"
    disp("x="+string(x0)+"+"+string(-b)+"t") //-b з формули напряв
else
    disp("x="+string(x0)+string(-b)+"t")  // якщо ж <0 то "-" враховується сам
end

if a>=0 then
    disp("y="+string(y0)+"+"+string(a)+"t") //те саме для а
else
    disp("y="+string(y0)+string(a)+"t")
end
endfunction
