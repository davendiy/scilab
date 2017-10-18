//dz №5 завдання 3
//written by David Zashkolnyi, 1 course, 11.10.17

//задача містить в собі алгоритми з попередніх задач
//програма не завжди дає правильний результат, оскільки scilab не може перевірити тест Ферма для
//великих чисел, наприклад 5^997=inf

function y_chisla=chisla_Ferma(n,a)      //функція з першої задачі
    y2_chisla=a^(n-1)-1
    y2_chisla=modulo(y2_chisla,n)       //умова псевдопростого числа
    if y2_chisla==0 then
        y_chisla=%t
    else y_chisla=%f
    end
endfunction
format(25)  //підвищення точності, щоб правильно перевіряти тест Ферма для великих чисел

disp("function:  <y=chisla_Ferma(n,a),  y=bool>")


N2=10^4
rand_matrix=rand(1,N2)   //rand_matrix- матриця з рандомних чисел
rand_matrix=rand_matrix*(N2/10)
rand_matrix=int(rand_matrix)

disp("<rand_matrix>: completed")

disp(rand_matrix)
pause

p_primes=primes(N2/10)
disp("<primes>:completed")   //інформація для юзера
size_primes=size(p_primes)
N=1
pause

rand_base_a=rand(1,3)    //rand_base - матриця з 3 рандомних баз
rand_base_a=rand_base_a*10
rand_base_a=round(rand_base_a)

k1=0
k2=0
k3=0
k=0
kilkist=0

disp("<rand>:completed")   //інформація для юзера
disp(rand_base_a)
pause
disp("start <circle>")     //інформація для юзера

for i=1:1:N2
    if modulo(i,100)==0
        disp(i)
    end    
    y1_chisla=chisla_Ferma(rand_matrix(i),rand_base_a(1))  //перевірка числа за трьома базами
    y2_chisla=chisla_Ferma(rand_matrix(i),rand_base_a(2))
    y3_chisla=chisla_Ferma(rand_matrix(i),rand_base_a(3))
    if y1_chisla then    //якщо число псевдопросте за трьома базами - відповідний лічильник+1
        k1=k1+1
    end    
    if y2_chisla then
        k2=k2+1
    end    
    if y3_chisla then
        k3=k3+1
    end
    
    //алгоритм з задачі 6 лаб 4
    
    x1=modulo(rand_matrix(i),2)
    x2=modulo(rand_matrix(i),3)
    x3=modulo(rand_matrix(i),5)
    x4=modulo(rand_matrix(i),7)              //відкидання чисел, які діляться на одне з перших 7 простих чисел
    x5=modulo(rand_matrix(i),11)
    x6=modulo(rand_matrix(i),13)
    x7=modulo(rand_matrix(i),17)
    if (x1==0) | (x2==0) | (x3==0) | (x4==0) | (x5==0) | (x6==0) | (x7==0)
        continue
    end
    
    for k=N:1:size_primes(2)
        if rand_matrix(i)==p_primes(k)          //перевіряємо чи належить елемент матриці простих чисел
            kilkist=kilkist+1  //якщо належить - к-ть+1 і перехід до наступного елемента   
            break
        end    
    end
end    
disp("bases:")
disp("a1="+string(rand_base_a(1)))  //інформація для юзера
disp("a2="+string(rand_base_a(2)))
disp("a3="+string(rand_base_a(3)))

disp("к-ть псевдопростих для баз а(i):")
disp("для а1:  "+string(k1))
disp("для а2:  "+string(k2))
disp("для а3:  "+string(k3))

disp("к-ть простих:  "+string(kilkist))
