clc;
funcprot(0);
function ans=simpson(a,b,n,g)
disp('lower limit is=',a);
disp('upper limit is=',b);
disp('number od interval=',n);
    h=(b-a)/n;
    sum=0;
    for i=1:n-1
        x=a+i*h;
        if modulo(i,2)==0
            sum=sum+2*g(x);
        else 
            sum=sum+4*g(x);
        end 
    end
    ans=(h/3)*(g(a)+g(b)+sum);
endfunction
