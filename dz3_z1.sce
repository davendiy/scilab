//dz №3 завдання 2
//written by David Zashkolnyi, 1 course, 30.09.17

k=[2,1,3;1,1,1;1,3,2]
y=[10;6;13]

x=k^(-1)*y            //обернена матриця
y2=k*x
if y2==y then             //перевірка правильності розв'язку
    disp("ответ правильный")
end
disp(x)
disp("ваш вариант")   
x2=[]
for i=1:1:3                //введення варіанту юзера
    a=input("x("+string(i)+")=")
    x2=[x2;a]
end
if k*x2==y then           //перевірка варіанту юзера
    disp("yes")
else
    disp("no")
end


