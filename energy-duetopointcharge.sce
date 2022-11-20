//energy due to system of charges
clc;
clear;
K=9e9;
n=input("number of charges= ")
for i=1:n
    mprintf("q(%d)= ",i);
    q(i)=input("" );
    printf("x coordinate of q(%d)= ",i)
    x(i)=input(" ")
    printf("y coordinate of q(%d)= ",i)
    y(i)=input(" ");
    printf("z coordinate of q(%d)= ",i)
    z(i)=input(" ")
end
E=0
for i=1:n-1
    for j=i+1:n
        r=sqrt((x(i)-x(j)).^2+(y(i)-y(j)).^2+(z(i)-z(j)).^2);
        E=E+K*(q(i)*q(j))/r
    end
end
disp(E)


Question 2: A linear rod is 5m long and its linear charge density is Lo+x0⁄2. Determine total charge within 1 m.
Q=∫_0^1▒(Lo+xo⁄2)dx

//linear charge density
clc;
clear;
L0=5;
function f=f(x)
    f=L0+x/2;
endfunction
y=integrate("f","x",0,1)
disp("total charge= ")
disp(y);


Question 3 : Surface charge density of a sheet is 4xy^2, if the values of x & y varies from -2 to 3. Determine total charge contained in the sheet. 
//total charge on a sheet

clc;
clear;
function f=f(x)
f=4*x; 
endfunction
q1=integrate ('f','x',-2,3)
function g=g(y)
g=y.^2 
endfunction
q2=integrate ('g','y',-2,3);
q=q1*q2
mprintf("total charge on sheet=%f",q);
