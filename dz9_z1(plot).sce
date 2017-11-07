//dz №9 завдання 1 (побудова степенів комплексних чисел)
//written by David Zashkolnyi, 1 course, 07.11.17

function zpow_n(z1,z2)    //функція приймає на вхід два комплексних числа (оскільки input погано працює)
    z1_m=[]
    z2_m=[]
    for i=1:100
        z1_m=[z1_m,z1^i]    //побудова матриць з степенів першого і другого компл. чисел
        z2_m=[z2_m,z2^i]
    end
    
      //відкриття графічного вікна №1 і його очищення
    scf(1)
    clf(1)
    plot(real(z1_m),imag(z1_m),'yellow')   //побудова першого графіка лінією
    plot(real(z1_m),imag(z1_m),'.red')     //побудова першого графіка точками для наочності
    
     //відкриття графічного вікна №2 і його очищення
    scf(2)
    clf(2)
    plot(real(z2_m),imag(z2_m),'green')   //побудова другого графіка аналогічно
    plot(real(z2_m),imag(z2_m),'.blue')
endfunction
