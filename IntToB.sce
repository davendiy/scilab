
    
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
