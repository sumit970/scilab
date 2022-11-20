clc;
clear;

disp("1: for cartesian to cylindrical");
disp("2: for cylindrical to cartesian");
disp("3: for cartesian to spherical");
disp("4: for spherical to cartesian");
disp("5: for spherical to cylindrical");
disp("6: for cylindrical to spherical");
ch=input("enter the choice: ");
switch(ch)
    case 1
        [x]=input("x=");
        [y]=input("y=");
         [z]=input("z=");
         rho=sqrt(x^2+y^2);
       if atan(y/x)<0 then phi=%pi+atan(y/x);
       else phi=atan(y/x);
     end;
  disp("cylindrical coordinates are: ")
       mprintf("value of rho=%f, phi=%f, z = %f",rho, phi, z)
    break;
case 2
              [rho]=input("rho=")
              [phi]=input("phi=")
              [z]=input("z=")
x=rho*cos(phi);
y=rho*sin(phi);
disp("Cartesian coordinates are: ")
       mprintf("value of x=%f, y=%f, z = %f",x, y, z);
break;
case 3
              [x]=input("x=");
              [y]=input("y=");
              [z]=input("z=");
            r=sqrt(x^2+y^2+z^2);
           if atan(sqrt((x^2+y^2)/z^2))<0 then theta=%pi+atan(sqrt((x^2+y^2)/z^2));
            else theta=atan(sqrt((x^2+y^2)/z^2));
           end
           if atan(y/x)<0 then phi=%pi+atan(y/x);
           else phi=atan(y/x);
           end
           disp("spherical coordinates are: ")
           mprintf("value of r=%f, theta=%f, phi = %f",r, theta, phi);
break;
case 4
              [r]=input("r=")
              [theta]=input("theta=")
              [phi]=input("phi=")
              x=r*sin(theta)*cos(phi);
              y=r*sin(theta)*sin(phi);
              z=r*cos(theta)
              disp("Cartesian coordinates are: ")
       mprintf("value of x=%f, y=%f, z = %f",x, y, z);
break;
case 5
              [r]=input("r=")
              [theta]=input("theta=")
              [phi]=input("phi=")
              rho=r*sin(phi);
              phi1=theta;
              z=r*cos(phi);
              disp("cylindrical coordinates are: ")
       mprintf("value of rho=%f, phi=%f, z = %f",rho, phi1, z)
break;
    case 6
              [rho]=input("rho=")
              [phi]=input("phi=")
              [z]=input("z=")
              r=sqrt((rho)^2+z^2);
              theta=phi;
              phi1=acos(z/sqrt((rho)^2+z^2));
              disp("spherical coordinates are: ")
           mprintf("value of r=%f, theta=%f, phi = %f",r, theta, phi1);
break;
end
