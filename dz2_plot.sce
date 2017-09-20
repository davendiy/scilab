//dz №2 завдання 2
//written by David Zashkolnyi, 1 course, 20.09.17
x=-2;
                                      //розрахунки перших елементів з областей значень f(x) і g(x) 
f=(1+x*%e^(-x))/(2+sqrt(x^2+sin(x)^2));   
f_matrix=[f];
g=sqrt(1+abs(x));
g_matrix=[g];
x=x+0.1;

   //розрахунок кожного елемента матриць (областей значень) з кроком 0.1
while x<=2                       
    f=(1+x*%e^(-x))/(2+sqrt(x^2+sin(x)^2));    //розразунок f(x0)
    f_matrix=[f_matrix,f];                     //приєднання f(x0) до матриці f(x)
    
    
    //розрахунок елемента g(x0) через умову
    if x<=0 then     
        g=sqrt(1+abs(x));      //при x0<=0
    else
        g=(1+3*x)/(2+(1+x)^(1/3));  //при x0>0
    end    
    g_matrix=[g_matrix,g];       //приєднання g(x0) до матриці g(x)
    
    
    x=x+0.1;   //крок циклу        
     
end

   //побудова графіків
plot(f_matrix)
plot(g_matrix)






