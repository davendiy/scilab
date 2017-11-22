//dz №11 завдання 1 (множина мандельброта)
//written by David Zashkolnyi, 1 course, 16.11.17
scf(3)

Maxltres = [50,50,100]            //початкові значення
Res = [300,600,600]
c_real = linspace(-0.77,-0.75,200)     //задані межі множини
c_imag = linspace(-0.09,-0.07,200)
c1 = []
c2 = []
c2_ = []
c1_ = []
n1 = 1
n = 1
x = [c_real(1)]
y = [c_imag(1)]
n2 = 1
for j = 1:int(length(c_imag))             //перебір всіх точок
    for i = 1:length(c_real)
        t = %t
        z = 0 + 0*%i
        for k = 1:Maxltres(n)
            z = z^2 + complex(c_real(i),c_imag(j))    //перевірка умови
            if abs(z) > 2
                t = %f
                n1 = k         //якщо на якомусь кроці модуль комплексного числа > 2 то вихід з циклу
                break
            end
        end
      if t then n1 = Maxltres(n) end    //якщо число задовольняє умову - колір окремий
      if n1 == n2
          x = [x,c_real(i)]//c_real(i)]     якщо колір даного числа такий самий як і в попереднього то дописуємо його у 
          y = [y,c_imag(j)]//-c_imag(j)]    окремий вектор, щоб будувати кожен колір одним плотом
          continue
      else
                
          r = modulo(245*n1,256)/256         //розрахунок кольору для кожного числа
          g = modulo(5*n1,256)/256
          b = modulo(255 - 25*n1, 256)
          if b<0
              b = 256+b
          end
          b = b/256               
          plot("nn",x,y,'colo',[r,g,b],'linest','none','marker','.','markersize',1)  //побудова точок одного кольору
          x = [0]
          y = [0]
          n2 = n1
      end
end
r = modulo(245*n1,256)/256         //побудова всіх точок, які залишились після циклу
g = modulo(5*n1,256)/256           //
b = modulo(255 - 25*n1, 256)
if b<0
     b = 256+b
end
b = b/256           
plot("nn",x,y,'colo',[r,g,b],'linest','none','marker','.','markersize',1)
n2 = 0
end

