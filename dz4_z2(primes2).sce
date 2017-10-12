//dz №4 завдання 2
//written by David Zashkolnyi, 1 course, 04.10.17
timer()
x=primes(10^6)
disp("<primes>:completed") //інформація для юзера
n=size(x)
k=0
for i=1:1:(n(2)-1)
    if x(i)+2==x(i+1)     //перевірка кожної пари простих чисел
        k=k+1
    end
    disp("i="+string(i))  //інформація для юзера
    
end
disp("<twins>:completed")  //інформація для юзера
disp("kilkistj: "+string(k))

disp("time="+string(timer())) //виведення часу
