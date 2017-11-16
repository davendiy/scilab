
function z=vec_product(x,y)       //функція обчислення век орного добутку
    i=[1,0,0]
    j=[0,1,0]
    k=[0,0,1]
    i1=[x(2),x(3);y(2),y(3)]    //i1,j1,k1 - квадратні матриці порядку 2 з формули обчислення визначника 
    j1=[x(1),x(3);y(1),y(3)]
    k1=[x(1),x(2);y(1),y(2)]
    z=i*detr(i1)-j*detr(j1)+k*detr(k1)   //detr - визначник (стандартна функція)
endfunction


function plotFrom3point(a,b,c)
    x = b - a
    y = c - a
    A = vec_product(x,y)
    
    x = [-10:0.1:10]
    y = [-10:0.1:10]
    z1 = []
    z = []
    for i = 1:length(x)
        for j = 1:length(x)
            z_tmp = A(1)*x(i) + A(2)*y(j)
            z1 = [z1,z_tmp]
        end
        z = [z;z1]
        z1 = []
    end
    plot3d(x,y,z)
endfunction
/*
x = [-10:0.1:10]
y = [-10:0.1:10]
z1 = []
z = []
for i = 1:length(x)
    for j = 1:length(x)
        z_tmp = -5*x(i) + 3*y(j) + 9
        z1 = [z1,z_tmp]
    end
    z = [z;z1]
    z1 = []
end
plot3d(x,y,z)
*/
