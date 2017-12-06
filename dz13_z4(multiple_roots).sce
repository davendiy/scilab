//dz №13 task 4 (check multiple roots)
//written by David Zashkolnyi, 1 course, 06.12.17
//(sorry for my bad English)

function r = multiple_roots(c)
    /*
    function that check if polynomial have a multiple roots 
    
    param c: vector of coeff
    return: True or False
    */
    p = poly(c,'x','coeff')  //create a poly with given coeff
    p1 = derivat(t)  //calculate the formal derivate  
    r = %f
    if gcd([p,p1]) ~= 1  //if gcd of poly and derivate > 1 multiple roots are exist
        r = %t
    end
endfunction
