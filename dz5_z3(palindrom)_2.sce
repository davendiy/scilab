//dz №5 завдання 3
//written by David Zashkolnyi, 1 course, 11.10.17

//після команд
//n=input('Введите n ')
//b=input('Введите b ')
//scilab працює тільки до початку циклу, а далі перестає функціонувати навіть у інтерактивному режимі
    
function n = IntToB(x,b)  //функція переведення числа в іншу систему числення
    if x>0 then k=1
    else k=-1
    end
    x=abs(x)
    n=0
    i=0
    while x>=b
        n=n+modulo(x,b)*10^i
        x=int(x/b)
        i=i+1
    end
    if ~(x==0) then
          n=(n+x*10^i)
    end
    n=k*n
endfunction


function x1=inverse(x)
    x1=0
    while x>0
        t=modulo(x,10)
        x1=x1*10+t
        x=int(x/10)
    end
endfunction
                       

format(20)
n=input('Введите n ')
b=input('Введите b ')
k=0
n=IntToB(n,b)

if inverse(n)==n 
    disp('Число '+string(n)+' явдяется палиндромом')
else
    disp("Число "+string(n)+" не является палиндромом")
end



//----------------------------2----------------------------------
for i=1:1:1000000 
        a1=int(IntToB(i,2))
        a2=int(IntToB(i,3))
        if(inverse(a1)==a1 & inverse(a2)==a2) 
             k=k+1
        end
end
        
disp(k)
