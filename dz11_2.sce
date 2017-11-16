//dz №11 завдання 1 (множина мандельброта)
//written by David Zashkolnyi, 1 course, 16.11.17
scf(1)

Maxltres = [50,50,100]            //початкові значення
Res = [300,600,600]
c_real = [-2.125:0.01:0.875]
c_imag = [-0.5:0.01:0.5]
c1 = []
c2 = []
c2_ = []
c1_ = []
n1 = 1
n = 1
x = [c_real(1)]
y = [c_imag(1)]
n2 = 1
for i = 1:length(c_real)             //перебір всіх точок
//    x = c_real(i)]
  //  y = [c_imag(j)]
    t_pre = %f
    for j = 1:int(length(c_imag)/2)
        t = %t
        z = 0 + 0*%i
        //if abs(complex(c_real(i),c_imag(j)))>2 then      //якщо модуль комплексного числа > 2 то вже воно не задовольняє умову множини мандельброта
          //  c1_ = [c1_,c_real(i)]          //добавляємо ці точки в матрицю щоб потом побудувати   (ці точки будуть одного кольору)
            //c2_ = [c2_,c_imag(i)]
            //continue
        //end      
        for k = 1:Maxltres(n)
            z = z^2 + complex(c_real(i),c_imag(j))    //перевірка умови
            if abs(z) > 2
                t = %f
                n1 = k         //якщо на якомусь кроці модуль комплексного числа > 2 то вихід з циклу
                break
            end
        end
      if t then n1 = Maxltres(n) end
      //  if t then
        //    c1 = [c,c_real(i)]   //якщо точка задовольняє умову, то колір в неї буде сталий, тому не будуємо її
          //  c2 = [c,c_imag(j)]
           // continue
        //end           
        if n1 == n2
            x = [x,c_real(i),c_real(i)]
            y = [y,c_imag(j),-c_imag(j)]
            continue
        else
                
            r = modulo(245*n1,256)/256         //розрахунок кольору для кожного числа
            g = modulo(5*n1,256)/256
            b = modulo(255 - 25*n1, 256)
            if b<0
                b = 256+b
            end
            b = b/256               //побудова кожної точки окремо (через це плот дуже довго працює)
            plot("nn",x,y,'colo',[r,g,b],'linest','none','marker','.','markersize',2)
            x = [0]
            y = [0]
            n2 = n1
    end
end
r = modulo(245*n1,256)/256         //розрахунок кольору для кожного числа
g = modulo(5*n1,256)/256
b = modulo(255 - 25*n1, 256)
if b<0
     b = 256+b
end
b = b/256           
plot("nn",x,y,'colo',[r,g,b],'linest','none','marker','.','markersize',2)
n2 = 0
end

