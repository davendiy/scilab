//dz №4 завдання 4
//written by David Zashkolnyi, 1 course, 04.10.17
timer()
y1=[]
n=[2:1:1000]
for i=1:1:999
    x=primes(n(i))
    n2=size(x)   //пошук всіх простих чисел і знаходження їхньої кількості
    y1=[y1,n2(2)]
end
y2=n./log1p(n)
plot(n,y1,'red')
plot(n,y2,'green')


disp("time="+string(timer())) //виведення часу
