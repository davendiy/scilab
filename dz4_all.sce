//dz №4 повний скрипт
//written by David Zashkolnyi, 1 course, 04.10.17

//------------------------------1----------------------------------------------
timer()
x=primes(10^6)
disp(x)
disp("time="+string(timer()))
disp("<primes>:completed") //інформація для юзера
pause

//------------------------------2----------------------------------------------

disp("start <twins>")
n=size(x)
k=0
for i=1:1:(n(2)-1)
    if x(i)+2==x(i+1)     //перевірка кожної пари простих чисел
        k=k+1
    end
    disp("twins i="+string(i))  //інформація для юзера
    
end
disp("<twins>:completed")  //інформація для юзера
disp("kilkistj: "+string(k))

disp("time="+string(timer())) //виведення часу
pause

//-------------------------------3---------------------------------------------
disp("start  <function>")
n=-1
disp("")
while (n<2) | (n>10^6)   //введення змінної n, доки не буде введено корректне число
  n=input("введите n")
end
 

x=primes(n)
n2=size(x)     //пошук всіх простих чисел і знаходження їхньої кількості
disp("<function>:competed")
disp("п(n)="+string(n2(2)))

disp("time="+string(timer())) //виведення часу
pause

//--------------------------------4--------------------------------------------
disp("start <plot>")
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

disp("<function>:competed")
disp("time="+string(timer())) //виведення часу
pause

//---------------------------------5-------------------------------------------

disp("start <primes_5>")

p=primes(10^5)
disp("<primes_1>:completed")   //інформація для юзера
disp("time="+string(timer())) //виведення часу
n1=size(p)
n=1
while p(n)<10^4     //заміна всіх простих чисел<10^10 нулями
    p(n)=0
    disp('n='+string(n))   //інформація для юзера
    n=n+1
end

disp("<matrix_primes>:completed")
disp("time="+string(timer())) //виведення часу

kilkist=0

x1=1
x2=1
x3=1
x4=1
x5=1
x6=1
x7=1
//генерування чисел

N2=10^4
x=rand(1,N2)
x=x*10^5
disp("<rand>:completed")   //інформація для юзера
disp("start <circle>")     //інформація для юзера
for i=1:1:N2
    while x(i)<10^4            //якщо елемент має менше ніж 10 цифр - домножаємо його на 10
        x(i)=x(i)*10           //доки воно не буде 10-цифровим
    end
    x(i)=round(x(i))                //округлення елемента
    disp("i="+string(i))           //інформація для юзера
    x1=modulo(x(i),2)
    x2=modulo(x(i),3)
    x3=modulo(x(i),5)
    x4=modulo(x(i),7)              //відкидання чисел, які діляться на одне з перших 7 простих чисел
    x5=modulo(x(i),11)
    x6=modulo(x(i),13)
    x7=modulo(x(i),17)
    if (x1==0) | (x2==0) | (x3==0) | (x4==0) | (x5==0) | (x6==0) | (x7==0)
        continue
    end
    
    for k=n:1:n1(2)
        if x(i)==p(k)          //перевіряємо чи належить елемент матриці простих чисел
            kilkist=kilkist+1  //якщо належить - к-ть+1 і перехід до наступного елемента
            break
        end
    end
    
        
end
disp("<primes_5>:completed")
//disp(x)
//disp(p)
disp(kilkist)

persent=kilkist/N2*100   //знаходження відсотку простих чисел
disp(string(persent)+"%")
pause


//----------------------------------------7-------------------------------------

disp("start <kontexample>")
x=primes(1000)          
disp("<primes>:completed")  //інформація для юзера
n=size(x)
p=0
q=0
disp("start circle")        //інформація для юзера


//цикл перевіряє усі комбінації p i q для p<q 
for i=1:1:n(2)-1
    disp("i="+string(i))    //інформація для юзера
    for j=(i+1):1:n(2)
        if 2^x(i)+1==3*x(j)    //якщо знайдкна хоча б одна пара - вихід з циклу
            p=x(i)
            q=x(j)
            break
        end
    end
    if p>0
        break
    end
    
    
end
disp("<mission>:completed")
disp("p="+string(p))
disp("q="+string(q))

disp("time="+string(timer()))  //виведення часу
pause
