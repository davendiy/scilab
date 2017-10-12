//dz №1 завдання 1
// Written by David Zashkolnyi, 1 course, 13.09.2017


directory = input("введите директорию фала сохранения","string")
diary(directory)                        //відкриття файлу
f=1
for i=1:20                                        
    f=f*i                         //пошук факторіалів
    disp(string(i)+"!="+string(f))
end
diary(0);               //закриття файлу
