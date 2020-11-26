function [A,k,y_pred]=Gompertz( a,b,S,t_pred)
A = exp(a);
k=-b;

for i=1:length(t_pred)
    x(1,i)=t_pred(1,i)-2004;
end

y_pred=S*exp(-A*exp(-k*x));
end

