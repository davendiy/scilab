//dz №5 завдання 2
//written by David Zashkolnyi, 1 course, 11.10.17

N=input("введите n")
n=1
while 10^(n)<N       //знаходження к-ті цифр числа n
    n=n+1
end
n=n+2


rand_matrix=rand(1,N+1)    //створення рандомної матриці
rand_matrix=int(rand_matrix*10^n)
disp("<rand>:completed")
disp(rand_matrix)
pause

a=%f
for i=1:1:(N)
    for j=(i+1):1:(N+1)  //перевірка всіх пар чисел
        if modulo(abs(rand_matrix(i)-rand_matrix(j)),n)==0
            a=%t
            break
        end
    if a break end
    end
if a break end
end

if a then
    disp("така пара чисел наявна:")
    disp("a="+string(rand_matrix(i)))
    disp("b="+string(rand_matrix(j)))
else
    disp("така пара чисел не наявна")    
end

