//dz №7 завдання 3 (кількість різних бітів)
//written by David Zashkolnyi, 1 course, 27.10.17
    
function k=diff_of_bin(a,b)
    a=dec2bin(a)            //переведення числа в 2 систему
    b=dec2bin(b)
    k=0
    while length(a)<length(b)  //до чисел зправа дописуються нулі поки вони не будуть однакової довжини
        a='0'+a
    end
    while length(a)>length(b)
        b='0'+b
    end
    for i=1:length(a)                 //цикл просто провіряє кожен біт
        if part(a,i)<>part(b,i) then 
            k=k+1
        end
    end
endfunction
