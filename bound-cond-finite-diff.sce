
Paper Title: Electromagnetics
Aim: Simplify boundary value problem using finite 
Difference method.
Given:=  General 2nd order differential equation : 
             
Theory:- 
The boundary condition is defined as y(at x1)=a and y(at xn)=a here, n is nodes between [a, b] 
Step size between successive nodes, h= (b-a)/(n-1) 

Program Code:-
//2nd order differential equation

clc;
clear;
clf;
a=0;
b=%pi/2;
i=1;
n=50;
A=zeros(n,n);
A(1,1)=1;
A(n,n)=1;
h=(b-a)/(n-1);
function fa=f(x)
    fa=0;
endfunction
function fb=g(x)
    fb=1;
endfunction
function fy=k(x)
    fy=0;
endfunction
x0=a;
x=a;
for i=2:n-1
    x=x+h;
    x0=[x0 x]
    A(i,i)=g(x)-(2/h^2);
    A(i,i+1)=(1+0.5*h*f(x))/(h^2)
    A(i,i-1)=(1-0.5*h*f(x))/(h^2)
    B(i,1)=k(x);
end
B(1,1)=0
B(n,1)=3
y=A\B
x=[x0 b];
xgrid
plot(x,y,'v--')
plot(x,3*sin(x),'r+')
legend("Solution of FDE","3sinx")
xlabel("x-axis--->")
ylabel("y-axis--->")
title("Boundary value problem using Finite Difference method");

  
