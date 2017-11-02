//dz №7 завдання 9 (pseudorandom generator)
//written by David Zashkolnyi, 1 course 
//Taras Shevchenko National University of Kyiv
//Faculty of Mechanics and Mathematics
//29.10.17

function x=random_my(k)  //генератор k псевдовипадкових чисел
    format(25)           
    x=[]
    time=getdate()
    n=217728       //числа, взяті з вікіпедії, як найкращі
    a=84589
    b=45989        //х0-початкове число, залежить від поточного часу, як джерела ентропії
    x0=time(1)+time(2)*time(3)+time(4)+time(5)*time(6)+time(7)+time(8)*time(9)+time(10)
    x0=modulo(x0,n)
    x=a*x0+b                //перше число за формулою лінійного конгруентного методу
    x=modulo(x,n)
    i=2
    
    while i<=k         //повтор операції k разів
        x0=a*x(i-1)+b
        x0=modulo(x0,n)
        x=[x,x0]
        i=i+1
        
    end
    
          //побудова графіка
    plot(x)   
endfunction
