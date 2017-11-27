//dz №10 завдання 4 (візуалізація прямої в просторі, яка проходить через 2 точки)
//written by David Zashkolnyi, 1 course, 27.11.17

function plot_line(x1,x2)
    x = [x1(1),x2(1)]
    y = [x1(2),x2(2)]  //вектори з однакових координат
    z = [x1(3),x2(3)]
    param3d(x,y,z)   //побудова
    e = gce()
    e.mark_mode = 'on'  //задання параметрів щоб гарно побудувати точки
    e.mark_style = 0
    e.mark_size = 3
endfunction
