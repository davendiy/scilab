//dz №4 завдання 7
//written by David Zashkolnyi, 1 course, 04.10.17


timer()
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
