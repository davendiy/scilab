//dz №4 завдання 3
//written by David Zashkolnyi, 1 course, 04.10.17

n=-1
while (n<2) | (n>10^6)   //введення змінної n, доки не буде введено корректне число
n=input("введите n")
end
 
timer()
x=primes(n)
n2=size(x)     //пошук всіх простих чисел і знаходження їхньої кількості
disp("п(n)="+string(n2(2)))

disp("time="+string(timer())) //виведення часу
