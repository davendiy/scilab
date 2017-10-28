//dz №7 завдання 5 (modular exponential)
//written by David Zashkolnyi, 1 course 
//Taras Shevchenko National University of Kyiv
//Faculty of Mechanics and Mathematics
//28.10.17


//функція №1
//прямий спосіб
//працює дуже повільно
function y=modular_exp1(a,e,n)  
    y=1
    a=modulo(a,n)  // остача від ділення а на n, щоб зменшити а
    for i=1:1:e  //послідовне обчислення за модулем n
        y=y*a
        y=modulo(y,n)
    end
endfunction


//функціія №2
//хитрий спосіб вказаний в задачі
//працює моментально, наприклад 
//modular_exp2(9876434567887686574787698,5675477988977,8987986583)=3417264128 обчислив комп за 0.21875 проц часу

function y=modular_exp2(a,e,n)
    y=1
    e=dec2bin(e)   //переведення степеня в двійкову систему
    e=strrev(e)    //обернення степеня, щоб було удобно писати цикл
    a=modulo(a,n)   //остача від ділення а на n, щоб зменшити а
    for i=1:1:length(e)    //цикл який перебирає бінарні значення степеня
        if part(e,i)=='1'   //якщо знач = 1 то треба а1 піднести до степеня 2^(i-1)
            a1=a         //якщо і=0, то підносити не треба
            if i-1<>0        
                for j=1:i-1
                    a1=modulo(a1^2,n) //піднесення а1 до степеня
                end 
            end
            y=y*a1      //домножання остаточного числа на а1
            y=modulo(y,n)  //обчислення його модуля
        end
    end
    
endfunction
