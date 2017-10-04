//dz №4 завдання 5   (спосіб стандартний)
//written by David Zashkolnyi, 1 course, 04.10.17


//даний спосіб оснований на банальній перевірці подільності кожного числа
//є недоцільним, оскільки займає багато часу



N2=10^7
x=rand(1,N2)
x=x*10^11
disp("<rand>:completed")   //інформація для юзера
disp("start <circle>")     //інформація для юзера
for i=1:1:N2
    n=round(sqrt(x(i)))+1  //перевіряється подільність x на всі числа до sqrt(x)
    disp("i="+string(i))   //інформація для юзера
    for j=1:1:n
        x1=modulo(x(i),j) 
        if x1==0
            break       //якщо хоча б одне число ділить x - перехід до наступного x
        end
    end
    if j==n             //якщо цикл закінчився нормально - х - просте
       k=k+1
    end
end
disp("k="+strimg(k))
persent=kilkist/N2*100
disp(string(persent)+"%")
