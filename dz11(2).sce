scf(2)
clf(2)
Maxltres = [50,50,100]
Res = [300,600,600]
c_real = linspace(-0.77,-0.75,200)     //множина мандельброта (фрактал)
c_imag = linspace(-0.09,-0.07,200)
//c = complex(c_real,c_imag)
c1 = []
c2 = []
c2_ = []
c1_ = []
n = 1
//for n = 1:3
for i = 1:length(c_real)
    t_pre = %f
    for j = 1:length(c_imag)     //перебір всіх точок
       t = %t
        z = 0 + 0*%i
        for k = 1:Maxltres(n)           //перевірка умови
            z = z^2 + complex(c_real(i),c_imag(j))
            if abs(z) > 1000
                t = %f
                //disp(string(i)+" ",string(abs(z)))
                c1_ = [c1_,c_real(i)]    //якщо умову не задовольняє то додавання до одної матриці
                c2_ = [c2_,c_imag(j)]
                
                break
            end
        
        end
        if t then
            c1 = [c1,c_real(i)]      //якщо умову задовольняє то додавання до іншої матриці
            c2 = [c2,c_imag(j)]
    end
    end
   end

scf(2)
clf(2)
//plot(c1_,c2_,'+red')
plot("nn",c1,c2,'linest','none','marker','.','markersize',2)   //побудова всії точок одразу
//c1 = []
//c2 = []

//plot(c1_,c2_,'red')
