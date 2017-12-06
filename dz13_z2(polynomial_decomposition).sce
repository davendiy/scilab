//dz №13 task 2 (polynomial decomposition)
//written by David Zashkolnyi, 1 course, 06.12.17
//(sorry for my bad English)

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


function r = decomp(c, x)
    /*
    function that decomposite polinom by scheme of Gorner
        
    param c: vector of coefficients of poly (a0..an)
    param x: given points
    return: vector of coeff od decomposition
    */
    l = list(c)
    r = []
    for i = 1:length(c)
        [t1, t2] = Gorner(l(i), x)   //use the scheme of Gorner
        l($+1) = t2             //append to list of history a new vector of coeff
        r($+1) = t2(length(t2) + 1 - i)  //append to list of decomposite the last coeff
    end
    
    disp(l)
endfunction
