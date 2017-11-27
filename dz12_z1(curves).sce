//dz №12 завдання 1 (криві другого порядку)
//written by David Zashkolnyi, 1 course, 27.11.17

function plot_curves_param(a,b,p)
    t = [-20:0.1:20]
    x = a*cos(t)
    y = b*sin(t)
    scf(1)
    //clf(1)
    plot(x,y,'red')
    
    
    t = [-2:0.1:2]
    x = a*cosh(t)
    x1 = -a*cosh(t)
    x = [x,x1]
    y = b*sinh(t)
    y = [y,y]
    scf(2)
    //clf(2)
    plot(x,y,'red')
    
    t = [-20:0.1:20]
    x = t^2/(2*p)
    y = t
    scf(3)
    //clf(3)
    plot(x,y,'red')
endfunction


function plot_curves_kanon(a,b,p)
    x = [-10:0.1:10]
    y = sqrt((-x.^2/a^2 + 1)*b^2)
    y = [y,-y]
    scf(1)
    clf(1)
    plot(y,[x,x])
    
    y = sqrt((1+x.^2/a^2)*b^2)
    y = [y,-y]
    scf(2)
    clf(2)
    plot(y,[x,x])
    
    y = sqrt(2*p*x)
    y = [y,-y]
    scf(3)
    clf(3)
    plot([x,x],y)
    
    
endfunction
