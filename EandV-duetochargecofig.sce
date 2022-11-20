//electric field and electric potential due to point charge
clc;
clear;
clf;
q=input("enter charge= ");
k=9e9;
r=linspace(10,400);
E=k.*q./(r).^2;
xgrid
subplot(1,2,1);
plot2d(r,E);
xlabel("r");
ylabel("E");
title("electric field due to point charge")
V=k.*q./r;
subplot(1,2,2);
plot2d(r,V);
xgrid
xlabel("r");
ylabel("V");
title("electric potential due to point charge");



  
//electric field and electric potential due to charged circular ring

clc;
clear;
clf;
q=input("enter charge= ");
a=input("enter radius of ring= ");
k=9e9;
r=linspace(-30,30,400);
E=k.*q.*r./(r.^2+a.^2).^1.5;
subplot(1,2,1);
plot2d(r,E);
xlabel("r");
ylabel("E");
xgrid
title("electric field due to charged ring")
V=k.*q./(r.^2+a.^2).^0.5;;
subplot(1,2,2);
plot2d(r,V);
xlabel("r");
ylabel("V");
title("electric potential due to charged ring");
xgrid;




//electric field and electric potential due to uniformely charged conducting sphere

clc;
clear;
clf;
q=input("enter charge= ");
a=input("enter radius of sphere= ");
k=9e9;
q=q*1.6e-19;
r=linspace(a,5*a,400);
E=k.*q./r.^2;
subplot(1,2,1);
plot2d(r,E);
xlabel("r");
ylabel("E");
xgrid
title("electric field due to uniformely charged conducting sphere");
r1=linspace(0,a,100);
subplot(1,2,2);
s=k.*q./a
plot2d(r1,linspace(s,s,100)); //for r<=a
plot2d(r,k.*q./r);            //for r>a
xlabel("r");
ylabel("V");
xgrid
title("electric potential due to uniformely charged conducting sphere");



//electric field and electric potential due to uniformely charged non-conducting solid sphere

clc;
clear;
clf;
q=input("enter total charge on sphere= ");
a=input("enter radius of sphere= ");
k=8.85*10^(-12);
r=linspace(0,a,100);        //r<=a
r1=linspace(a,10*a,400);     //r<a
rho=3*q./(4*%pi*a^3);       //volume charge density
//for electric field 
E1=(rho/3*k)*r;             //for r<=a
E2=(rho/3*k)*(a^3./r1.^2);  //for r>a
subplot(1,2,1);
plot2d(r,E1,9);
plot2d(r1,E2,5);
xlabel("r");
ylabel("E");
xgrid;
title("electric field due to uniformely charged non-conducting solid sphere");
//for electric potential
v1=(q./(4*%pi*k))*((3*a^2-r.^2)./(2*a^3)); //for r<=a
v2=q./(4*%pi*k*r1);                        //for r>a
subplot(1,2,2);
plot2d(r,v1,2);
plot2d(r1,v2,1);
xlabel("r");
ylabel("V");
xgrid;
title("electric potential due to uniformely charged non-conducting solid sphere");
