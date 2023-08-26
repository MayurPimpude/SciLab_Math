clc;
deff('df=f(x,y)','df=x^2+y');
    x0=input("enter x0 value:")
    y0=input("enter y0 value:")
    h=input("enter value of h:")
    xn=input("enter final value of x:")
    x(1)=x0;
    y(1)=y0;
        k1=h*f(x0,y0);
        k2=h*f(x0+(h/2),y0+(k1/2));
        k3=h*f(x0+(h/2),y0+(k2/2));
        k4=h*f(x0+h,y0+k3);
        k=(1/6)*(k1+2*k2+2*k3+k4);
        disp('k1=',k1);
        disp('k2=',k2);
        disp('k3=',k3);
        disp('k4=',k4);
        disp('k=',k);
        y=y0+k;
        x=x0+h;
        disp('x=',x);
        disp('y=',y);
        disp('end');
        

