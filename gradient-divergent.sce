

//gradient

clc;
clf;
clear;
//defining surface
function surface=f(x, y)
    surface=x^9+2*y^5;
endfunction
//define range of x & y for plot
x=linspace(-5,5,20);
y=linspace(-5,5,20);
z=feval(x,y,f);
subplot(2,1,1)
plot3d(x,y,z);
//create grid or array
[X,Y]=meshgrid(x,y);
//define x & y component of gradient
fx=9*X.^8;
fy=10*Y.^4;
subplot(2,1,2);
//drraw vwctor field
champ1(x,y,fx',fy');
xlabel("x axis");
ylabel("y axis");


//divergent
clc; 
clf; 
clear;
x=linspace(-5,5,10);
y=linspace(-5,5,10);
[X,Y]=meshgrid(x,y);
fx=X.^3
fy=Y.^3
champ1(x,y,fx',fy');
function surface=f(x, y)
    surface=3*x^2+3*y^2;
endfunction
contour(x,y,f,5);
xlabel("x axis");
ylabel("y axis");
title("divergence of a vector");
