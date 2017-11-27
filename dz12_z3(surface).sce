//dz №12 завдання 1 (поверхні 2-го порядку)
//written by David Zashkolnyi, 1 course, 27.11.17

function plot_surface(a,b,c,p,q)                  //функція побудови поверхонь 2-го порядку в кожному новому вікні, заданих канонічно
    x = [-10:0.1:10]
    y = x
    scf(1)            //еліпсоїд
    clf(1)
    deff('z = f(x,y)','z = sqrt((1-x^2/a^2-y^2/b^2)*c^2)')     //х і у задані, z залежить від х і у  
    deff('z = f2(x,y)','z = -sqrt((1-x^2/a^2-y^2/b^2)*c^2)')
    fplot3d(x,y,f,alpha = 5,theta = 31)                        //побудова окремо додатніх і окремо від'ємних z
    fplot3d(x,y,f2,alpha = 5,theta = 31)
    
    scf(2)
    clf(2)
    deff('z = f(x,y)','z = sqrt((-1+x^2/a^2+y^2/b^2)*c^2)')   //однопорожнинний гіперболоїд
    deff('z = f2(x,y)','z = -sqrt((-1+x^2/a^2+y^2/b^2)*c^2)')  //будується аналогічно
    fplot3d(x,y,f,alpha = 5,theta = 31)
    fplot3d(x,y,f2,alpha = 5,theta = 31)
    
    scf(3)
    clf(3)
    deff('z = f(x,y)','z = sqrt((1+x^2/a^2+y^2/b^2)*c^2)')   //двопорожнинний гіперболоїд
    deff('z = f2(x,y)','z = -sqrt((1+x^2/a^2+y^2/b^2)*c^2)')  //будується аналогічно
    fplot3d(x,y,f,alpha = 5,theta = 31)
    fplot3d(x,y,f2,alpha = 5,theta = 31)

    scf(4)
    clf(4)
    deff('z = f(x,y)','z = (x^2/p+y^2/q)/2')   //еліптичний параболоїд
    fplot3d(x,y,f,alpha = 5,theta = 31)    //розраховується тільки одна частина, оскільки кореня нема


    scf(5)
    clf(5)
    deff('z = f(x,y)','z = (x^2/p-y^2/q)/2')   //гіперболічний параболоїд
    fplot3d(x,y,f,alpha = 5,theta = 31)   //будується аналогічно еліптичному
endfunction

