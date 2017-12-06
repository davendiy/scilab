//dz №13 task 3 (rational roots)
//written by David Zashkolnyi, 1 course, 06.12.17
//(sorry for my bad English)


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


function root = RRoot(c)
    /*
    function that find rational roots
        
    param c: vector of coefficients of poly(a0..an)
    return: vector of rational roots
    */
    q = [1, factor(abs(c(1)))]       //decomposite the free coeff on prime factors
    p = [1, factor(abs(c(length(c))))] //decomposite the coeff near the eldest degree on prime factors
    l = []
    r = []
    for i = 1:length(q)
        for j = 1:length(p)
            t = p(j)/q(i)     //check each possible rational roots
            b=%t
            for k=1:length(l)  //check if we have already used this potential roots
               if l(k)==t
                   b=%f
                   break
               end
            end
            if b 
                l = [l, t]   //create a vector of every potential roots
                l = [l, -t]
            end
        end 
    end
    pause
    
    for i=1:length(l)
        if Gorner(c, l(i))(1) == 0  //check every potential roots by scheme of Gorner
            r = [r, l(i)]       //append true roots to vector
        end
    end
endfunction
