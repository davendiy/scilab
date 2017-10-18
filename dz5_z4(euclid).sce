//dz №5 завдання 4
//written by David Zashkolnyi, 1 course, 18.10.17

function k=Euclid_kilkist_krokiv(a,b)
    k=0
    while %t
        if a>b                     //зіичайний алгоритм евкліда, на кожному кроці лічильник збільшується
            a=modulo(a,b)
            k=k+1
            if a==0
                break
            end
            
        else
            b=modulo(b,a)
            k=k+1
            if b==0
                break
            end
            
        end
            
    end
endfunction

for n=1:1:20   //перевірка для всіх n<=20
        mini=100000    //по-дурному оголосив початкові мінімальні а і b
        minj=100000
        i=1
        while %t          //подвійний цикл який перевіряє всі пари за принципом:
                           // i - основний лічильник, який постійно збільшується на 1
            for j=1:1:i     //j - другорядний лічильник, який бігає від 1 до і
                x=Euclid_kilkist_krokiv(i,j)
                if x==n then
                    if i+j<mini+minj then    //якщо пара чисел менша, ніж мінімальна - мінімальній присваюється дана пара
                        mini=i
                        minj=j
                    end
                    t=1
                    break 
                if t==1 then 
                    t=0
                    break
                    end
                end       
                
            end
            i=i+1
            if i+1>mini+minj then break end   //якщо і>мінімальна пара - немає сенсу далі перевіряти
        end
        
disp("n="+string(n)+"   a="+string(mini)+"  b="+string(minj))
end
