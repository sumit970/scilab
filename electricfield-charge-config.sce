//electric field due to charge configuration

clc;
clear;
clf;
k=9e9;
//1st charge
q1=input(" enter number of electrons for 1st charge: ");
q1=q1*1.6*10^(-19);
x=linspace(-10,10,20);
y=linspace(-10,10,20);
x1=input(" enter x coordinate of charge q1: ");
y1=input(" enter y coordinate of charge q1: ");
[X,Y]=meshgrid(x,y);
fx1=k*q1*(X-x1)./(((X-x1).^2+(Y-y1).^2).^1.5);
fy1=k*q1*(Y-y1)./(((X-x1).^2+(Y-y1).^2).^1.5);
//2nd charge
q2=input(" enter number of electrons for 2nd charge: ");
q2=q2*1.6*10^(-19);
x2=input(" enter x coordinate of charge q2: ");
y2=input(" enter y coordinate of charge q2: ");
fx2=k*q2*(X-x2)./(((X-x2).^2+(Y-y2).^2).^1.5);
fy2=k*q2*(Y-y2)./(((X-x2).^2+(Y-y2).^2).^1.5);

//3rd charge
q3=input(" enter number of electrons for 3rd charge: ");
q3=q3*1.6*10^(-19);
x3=input(" enter x coordinate of charge q3: ");
y3=input(" enter y coordinate of charge q3: ");
fx3=k*q3*(X-x3)./(((X-x3).^2+(Y-y3).^2).^1.5);
fy3=k*q3*(Y-y3)./(((X-x3).^2+(Y-y3).^2).^1.5);
//4th charge
q4=input(" enter number of electrons for 4th charge: ");
q4=q4*1.6*10^(-19);
x4=input(" enter x coordinate of charge q4: ");
y4=input(" enter y coordinate of charge q4: ");
fx4=k*q4*(X-x4)./(((X-x4).^2+(Y-y4).^2).^1.5);
fy4=k*q4*(Y-y4)./(((X-x4).^2+(Y-y4).^2).^1.5);
//plotting 
fx=fx1+fx2+fx3+fx4;
fy=fy1+fy2+fy3+fy4;
champ1(x,y,fx',fy');
xlabel("x axis");
ylabel("y axis");
title("electric field due to a charge configuration");
