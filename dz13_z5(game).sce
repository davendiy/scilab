//dz №13 task 5 (game)
//written by David Zashkolnyi, 1 course, 06.12.17
//(I decided to write comments in english)
//this way taken from https://jeremykun.com/2014/11/18/learning-a-single-variable-polynomial-or-the-power-of-adaptive-queries/


function r=game()
    /* 
    function that realize the "game of polynoms"
    
    return: wanted polinom
    */
    a = []
    p = input('value at х = 1:')   //ask a value f(1)
    N = p + 1
    y0 = input('value at х = '+string(N)+':')  //ask a value f(f(1)+1) 
    i = 0
    while y0 ~= 0 
        disp("i=" + string(i))   //decomposite a polynom on polynom whith less degree and const
        t=modulo(y0, N)           //by induction
        y0 = (y0 - t) / N
        a(length(a) + 1) = t
        i = i + 1 
    end
    r=poly(a, 'x', 'coeff')
endfunction
