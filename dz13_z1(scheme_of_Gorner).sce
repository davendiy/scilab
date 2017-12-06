//dz №13 task 1 (scheme of Gorner)
//written by David Zashkolnyi, 1 course, 06.12.17
//(I decided to write comments in English)
//(sorry for my bad English)
//in big degrees scheme of Gorner work faster than classic way, 'cause it don't bring number to this degree  

function v = subst(p, x)
    /*
    function that calculate value of polinom in classic way
    
    param p: polinom
    poram x: given point
    return: values
    */
    timer()
    v = 0
    p = coeff(p)
    for i = 1:length(p)
        v = v + p(i) * x ** (length(p) - i)
    end
    disp("time: " + string(timer()))
endfunction


function [v, c2]=Gorner(c, x)
    /*
    function that calculate value of poly in point by scheme of Gorner
    
    param c: vector of coefficients of polynom
    param x: given point
    return v: values
    return c2: coefficients of scheme
    */
    timer()
    c2 = [c(1)]
    for i = 2:length(c)
        c2(i) = c(i)+c2(i-1)*x   //calculate each new coeff
    end
    v = c2($)     //disp the last coeff (it mean a0)
    disp("time: " + string(timer()))   
endfunction

