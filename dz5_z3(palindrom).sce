//dz №5 завдання 3
//written by David Zashkolnyi, 1 course, 11.10.17


    
function n = IntToB(x,y)  //функція переведення числа в іншу систему числення
    if x>0 then n=""
    else n="0"    
    end
    while x>0
        y=string(modulo(x,b))
        n=y+n
        x=int(x/b)
    end
endfunction

function t=palin(n)   //функція перевірки паліндрома (з дз по пайтону)
    t=%f
    k=1
    while 10^k<n
        a=modulo(int(n/10^(k-i)),10)
        b=modulo(n,10)
        if ~(b==a)
            t=%f
            break
        end    
        i=i+2
        n=int(n/10)
        end
    
    
    
      
endfunction                        
n=input('Введите n ')
b=input('Введите b ')
k=0
n=int(IntToB(n,b))
disp(n)
if palin(n)==0 
    disp('Число не явдяется палиндромом')
else
    disp("Число - палиндром")
end
pause


//----------------------------2----------------------------------
for i=1:1:1000000 
        a1=int(IntToB(i,2))
        a2=int(IntToB(i,3))
        if(palin(a1)==1 & palin(int(a2))==1) 
             k=k+1
        end
end
        
disp(k)
