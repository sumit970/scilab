
Paper Title: Electromagnetics
Aim: Solve differential equations using the finite Difference method.
Given:=  General 2nd order differential equation : 
             
Theory:-  The boundary condition is defined as y(at x1)=a and y(at xn)=a here, n is nodes between [a, b].
Step size between successive nodes, h= (b-a)/(n-1) 

1.	 Solve following differential equation: 
        //  2y(t)"-5y(t)’+y(t)=0
        //   y(3)=6,  y(4)=-2.1;
        //   find error at t=3.5.
        //   if true value of y(3.5)= 4.4399819

//abhishek 13680
//solve differential equaion


clc
clf
clear
i=1
a=3
b=4
y(1)=6
n=299
y(n)=-2.1
h=(b-a)/(n-1)
A=zeros(n,n)
A(1,1)=1
A(n,n)=1
function f=alpha(x)
    f=-5/2
endfunction
function g=Beta(x)
    g=1/2
endfunction
function z=Gamma(x)
    z=0
endfunction
x0=a
x=a
for i=2:n-1
    x=x+h
    x0=[x0 x]   
    A(i,i)=Beta(x)-(2/h^2)
    A(i,i+1)=(1+0.5*h*alpha(x))/h^2
    A(i,i-1)=(1-0.5*h*alpha(x))/h^2
    B(i,1)=Gamma(x)
end
B(1,1)=6
B(n,1)=-2.1
y=A\B
x=[x0 b]
plot(x,y')
xlabel('x')
ylabel('y(x)')
xtitle('solution of 2nd ODE from finite diffrence method');
xgrid
mprintf("x(%d)=%f      y(x(%d))=y(%f)=%f\n",((n+1)/2),x((n+1)/2),((n+1)/2),x((n+1)/2),y((n+1)/2))
pe=abs((4.4399819-y((n+1)/2))/4.4399819)
disp("  pecentage error at x=3.5 is :")
disp(pe)
ylabel('y(x)')
xtitle('solution of 2nd ODE from finite diffrence method');
xgrid
disp((n+1)/2)
disp(x((n+1)/2));
disp(y((n+1)/2));
pe=abs((4.4399819-y((n+1)/2))/4.4399819)
disp("pecentage error at x=3.5 is: ")
disp(pe)





2.	Solve following differential equation: 
// y"(t)-y(t)=2 cosh(t)
//         y(0)=0; y(π)=36.26
//         find error at t=π/2
//         if true value of  y(π/2)= 3.6838468


//solve differential equaion
clc
clf
clear
i=1
a=0
b=%pi
y(1)=0
n=99
y(n)=-36.26 
h=(b-a)/(n-1)
A=zeros(n,n)
A(1,1)=1
A(n,n)=1
function f=alpha(x)
    f=0
endfunction
function g=Beta(x)
    g=-1
endfunction
function z=Gamma(x)
    z=2*cosh(x)
endfunction
x0=a
x=a
for i=2:n-1
x=x+h
x0=[x0 x]  
A(i,i)=Beta(x)-(2/h^2)
A(i,i+1)=(1+0.5*h*alpha(x))/h^2
A(i,i-1)=(1-0.5*h*alpha(x))/h^2
B(i,1)=Gamma(x)
end
B(1,1)=0
B(n,1)=36.26
y=A\B
x=[x0 b]
plot(x,y','o')
xlabel('x')
ylabel('y(x)')
xtitle('solution of 2nd ODE from finite diffrence method')
mprintf("x(%d)=%f      y(x(%d))=y(%f)=%f\n",((n+1)/2),x((n+1)/2),((n+1)/2),x((n+1)/2),y((n+1)/2))
pe=abs((3.6838468-y((n+1)/2))/3.6838468)
disp("pecentage error at x=1.5707963 is: ")
disp(pe);



3.	An EM wave is propagating through a cylindrical steel vessel of inner radius 5 inch and outer radius 8 inches. The differential equation for the radial displacement ‘u’ along the thickness is given by
 
u(a) = 0.0038731’’ 
u(b) = 0.0030768’’ 
The maximum normal stress in vessel at inner radius is given by ϒ = E/(1-v2 )[(u/r)r=a + v*(du/dr)r=a] E = 30Msi 
v = 0.3 
Divide the radial thickness into 12 equidistant node and plot and display the radial displacement profile.


clc; 
clear; 
clf; 
i=1; 
n=10; 
A=zeros(n,n)
A(1,1)=1
A(n,n)=1
function a=fa(x)
 a=1./x
endfunction
function b=fb(x)
 b=-1./x
endfunction
function c=fr(x)
 c=0
endfunction
a=5
b=8
h=(b-a)/(n-1)
x0=a 
x=a 
for i=2:n-1
 x=x+h 
 x0=[x0 x]
 A(i,i)=fb(x)-(2/h^2)
 A(i,i+1)=(1+0.5*h.*fa(x))/h^2
 A(i,i-1)=(1-0.5*h.*fa(x))/h^2
 B(i,1)=fr(x)
end
B(1,1)=0.0038731
B(n,1)=0.0030769
Y=A\B 
x=[x0 b]
r=input(" Enter value of r")
s=(30000000/(1-0.09))*[Y(1)/r + 0.3*(Y(2)-Y(1))/h]
plot(x,Y,'*')
disp(s)
legend("Solution of differential equation")
xtitle("Boundary Value problem for finite difference")
