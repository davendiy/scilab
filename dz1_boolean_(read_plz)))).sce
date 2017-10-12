//dz №1 завдання 2
//written by David Zashkolnyi, 1 course, 13.09.17

directory = input("введите директорию фала сохранения","string")   
diary(directory)                            //відкриття файлу
disp("a     b     c     (~((a&b)|~c))|~b")      //заголовок таблиці
for a = 1:2
    for b = 1:2                                //перебір всіх варіантів (1=true, 2=false)
        for c = 1:2
            if a==1 then a1=%t;
            else a1=%f;
            end
            if b==1 then b1=%t;
            else b1=%f;
            end
            if c==1 then c1=%t;
            else c1=%f;
            end
            d = (~((a1&b1)|~c1))|~b1                 //обчислення виразу для кожного варіанту
            disp(string(a1)+"     "+string(b1)+"     "+string(c1)+"            "+string(d))   //виведення
        end
    end
end
diary(0)           //закриття файлу
