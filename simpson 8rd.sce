clc;
deff('y=g(x)','y=x*x+4');
function ans=simpson2(a,b,n,g)
disp('lower limit is=',a);
disp('upper limit is=',b);
disp('number of interval=',n);

    h=0.06667;
    sum=0;
    for i=1:n-1;
        x=a+i*h;
        if modulo(i,3)==0
            sum=sum+2*g(x);
        else 
            sum=sum+3*g(x);
        end 
    end
    ans=(3*h/8)*(g(a)+g(b)+sum);
endfunction

