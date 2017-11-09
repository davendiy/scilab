//dz №9 завдання 3 (образи прямих при відображенні)
//written by David Zashkolnyi, 1 course, 07.11.17

//графіки теж закомічені, назви нижче
a_matrix=[]
b_matrix=[]     //реалізував відображення прямих через їх точки перетину, 
c_matrix=[]     //зображуючи ці точки плюсами (візуально схоже на прямі)
d_matrix=[]
for x=-5:0.01:5     //перебір 
    for y=-5:0.01:5
        a=x+y*%i    //перебір всіх комплексних точок перетину
        b=a^-1
        a_matrix=[a_matrix,a]    //матриця початкових точок перетину
        
        
        b_matrix=[b_matrix,b]    //матриці точок перетину при відображеннях
        b=a^2
        c_matrix=[c_matrix,b]
        b=(1-a)/(1+a)
        d_matrix=[d_matrix,b]
    end
    
end
scf(0)   //відкриття граф вікна №0 і його очищення
clf(0)     //побудова початкових прямих  (файл dz9_z3(0))
plot(real(a_matrix),imag(a_matrix),'+green')

scf(1)    //граф вікно №1
clf(1)    //побудова першого відображення (файл dz9_z3(1))
plot(real(b_matrix),imag(b_matrix),'+red')

scf(2)    //№2
clf(2)    //побудова другого відображення (файл dz9_z3(2))
plot(real(c_matrix),imag(c_matrix),'+blue')

scf(3)    //№3
clf(3)    //побудова третього відображення (файл dz9_z3(3))
plot(real(d_matrix),imag(d_matrix),'+black')

