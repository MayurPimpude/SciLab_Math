clc;
deff('[d]=f(x,y)','d=x^2+y');
    x0=input("enter x0 value:")
    y0=input("enter y0 value:")
    h=input("enter value of h:")
    xn=input("enter final value of x:")
    n=(xn-x0)/h;
disp('number of iteration=',n);
    for i=1: n;
        disp('step=',i);
        
        x(i)=x0+h;
        y(i)=y0+h*(f(x0,y0));
        disp('at x=');disp(x(i));
        disp('euler solution y=',y(i));
        disp("modified solution y=")
        
        for j=1:5;
            y(j)=y0+0.5*h*(f(x0,y0)+f(x(i),y(i)));
            disp(y(j));
            y(i)=y(j);
       end
    if x(i)==xn then
        break;
    else x0=x(i);
        y(0)=y(i);
       end
end
