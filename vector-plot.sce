# Program Code 1-
//Plotting of Vector
clc;
clear;
clf;
a=[0 0]
b=[2 3]
c=[a' b']
plot2d(c(1,:),c(2,:));
xarrows(c(1,:),c(2,:),5,6);
xlabel("x axis");
ylabel("y axis");
title("Vector plotting");



# Program Code 2-
//Plotting of Vector
clc;
clear;
clf;
a=[0 0]
b=[2 3]
c=[1 4]
d=[0.5 7]
m=[a',b',b',c',c',d',d',a']
plot2d(m(1,:),m(2,:));
xarrows(m(1,:),m(2,:), 11,[5:-1:2]);
xlabel("x axis");
ylabel("y axis");
title("  Vector Plotting ")
