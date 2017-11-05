//dz №8 завдання 1 (лемніската Бернуллі)
//written by David Zashkolnyi, 1 course, 05.11.17


a=input("a=")
phi=[-%pi/4:0.01:%pi/4]    
rho=sqrt(2*a^2*cos(2*phi))   //розрахунок формули
rho=[rho,-rho]         //створення однієї матриці з rho=-sqrt() i rho=sqrt(), щоб викликати polarplot один раз
phi=[phi,phi]          //матриця кутів phi має бути такого самого розміру, тому дублюємо її
scf(1)   //відкриття нового графічного вікна 
clf(1)   //очищення його, на всякий
polarplot(phi,rho)
