clc;
a=input("enter matrix a=")
b=input("enter marix b=")
disp('[a b]=c')
disp([a b])
n=input("enter n=")
disp('no. of iteration')
disp(n)
x0=b(1)
y0=0
z0=0
for i=1:n
    y(i+1)=(b(2)-a(2,1)*x0-a(2,3)*z0)/a(2,2)
    z(i+1)=(b(3)-a(3,1)*x0-a(3,2)*y0)/a(3,3)
    x(i+1)=(b(1)-a(1,2)*y0-a(1,3)*z0)/a(1,1)
    x0=x(i+1)
    y0=y(i+1)
    z0=z(i+1)
end
disp('x=');
disp(x)
disp('y=');
disp(y)
disp('z=');
disp(z)
