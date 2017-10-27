
    
function n = IntTo2(x)  //функція переведення числа в іншу систему числення
    b=2
    if x>0 then k=1      //знак числа 
    else k=-1
    end
    x=abs(x)
    n=0
    i=0
    while x>=b
        n=n+modulo(x,b)*10^i  //переведення числа за формулою
        x=int(x/b)
        i=i+1
    end
    if ~(x==0) then
          n=(n+x*10^i)  //якщо після формули залишилась ще остача, то її треба дописати
    end
    n=k*n  //домножання числа на його знак
endfunction
