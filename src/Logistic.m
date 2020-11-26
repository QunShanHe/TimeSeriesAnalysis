function [A,B,y_pred]=Logistic( a,b,S,t_pred )
B=exp(a);
A=-b;

for i=1:length(t_pred)
    x(1,i)=t_pred(1,i)-2004;
end

for i=1:length(t_pred)
y_pred(1,i)=S/(1+B*exp(-A*x(1,i)));
end

end

