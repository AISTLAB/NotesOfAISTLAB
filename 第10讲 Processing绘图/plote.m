clear;
clc;
x=0:.1:100;
a=1;
while 1
    y=-2*cos(x)+1.5*cos(x/3)-7*cos(x*a);
    plot(x,y);
    drawnow
    a=a+0.2;
    pause(0.1); 
end
