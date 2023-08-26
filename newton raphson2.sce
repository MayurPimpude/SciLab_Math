clc;
deff('y=f(x)','y=x^2-28');
deff('y=fd(x)','y=2*x');
x=input("enter value of x=")
x1=input("enter value of x1=")
i=0;
error=0.00001;
disp("by newton raphson method")
disp("Roots")
while(abs(x-x1)>=error)
    y=x-(f(x)/fd(x));
    disp(y);
    x1=x;
    x=y;
    i=i+1;
end
disp("No of iteration")
disp(i);
