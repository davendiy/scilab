//dz №10 завдання 1 (перевірка належності 4 точок площині)
//written by David Zashkolnyi, 1 course, 16.11.17

function s=mix_product(x,y,z)   //ф-ція обчислення мішаного добутку
    
    //обчислення векторого добутку
    i=[1,0,0]
    j=[0,1,0]
    k=[0,0,1]
    i1=[x(2),x(3);y(2),y(3)]    //i1,j1,k1 - квадратні матриці порядку 2 з формули обчислення визначника 
    j1=[x(1),x(3);y(1),y(3)]
    k1=[x(1),x(2);y(1),y(2)]
    x1=i*detr(i1)-j*detr(j1)+k*detr(k1)   //detr - визначник (стандартна функція)
    
    //обчислення скалярного добутку
    y1=x1.*z  //поелементне множення
    s=y1(1)+y1(2)+y1(3)


function t = check4points(x1,x2,x3,x4)      //функція перевірки, приймає на вхід 4 точки
    x = x2 - x1
    y = x3 - x1
    z = x4 - x1
    t = (mix_product(x,y,z) == 0)           //якщо мішаний добуток  = 0 то true
   
endfunction
