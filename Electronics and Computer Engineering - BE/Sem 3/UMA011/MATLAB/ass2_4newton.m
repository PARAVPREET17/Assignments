clc;
f=@(x)9*exp(-x)*sin(2*pi*x)-3.5;
f1=@(x)-9*exp(-x)*sin(2*pi*x)+18*pi*exp(-x)*cos(2*pi*x);
N=100;
h=0.01;
for i= -N:h:N
    if(f(i)*f(i+h)<0)
        x0=(i);
        x1=(i+h);
        break
    end
end
e=0.00001;
i=1;
while(i<=N)
    
       x1=(x0)-((f(x0))/f1(x0));
    if abs(x1-x0)<=e
        fprintf('value of x1=%f and iteration taken=%d',x1,i);
        break;
    else
        x0=x1;
        i=i+1;
    end
end