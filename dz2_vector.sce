//dz №2 завдання 1
//written by David Zashkolnyi, 1 course, 20.09.17

n=input("введите длину вектора");      //введення довжини вектора
a=[1:n];
for i=1:n
    a(i)=input("a"+string(i)+"=");     //введення кожного нового елемента вектора
end
disp(a)                       //виведення
