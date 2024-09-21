n=10000;
p1=0.01;
p2=0.1;
p3=0.2;
p4=0.5;
x=0:n;

a=binopdf(x,n,p1);
b=poisspdf(x,n*p1);
figure
bar(x,a)
hold on
bar(x,b)
hold off
xlabel('Observation')
ylabel('Probability')
title('(n, p) = (10^4, 0.01)')
legend('Binomial Distribution','Poisson Distribution')

c=binopdf(x,n,p2);
d=poisspdf(x,n*p2);
figure
bar(x,c)
hold on
bar(x,d)
hold off
xlabel('Observation')
ylabel('Probability')
title('(n, p) = (10^4, 0.1)')
legend('Binomial Distribution','Poisson Distribution')

e=binopdf(x,n,p3);
f=poisspdf(x,n*p3);
figure
bar(x,e)
hold on
bar(x,f)
hold off
xlabel('Observation')
ylabel('Probability')
title('(n, p) = (10^4, 0.2)')
legend('Binomial Distribution','Poisson Distribution')

g=binopdf(x,n,p4);
h=poisspdf(x,n*p4);
figure
bar(x,g)
hold on
bar(x,h)
hold off
xlabel('Observation')
ylabel('Probability')
title('(n, p) = (10^4, 0.5)')
legend('Binomial Distribution','Poisson Distribution')
