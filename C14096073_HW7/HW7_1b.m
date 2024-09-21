X1=HW7_1afun(1);
X2=HW7_1afun(2);
X20=HW7_1afun(20);

figure(1)
histogram(X1,100,'Normalization', 'pdf');
hold on
x1 = 0:0.01:1;
y1 = normpdf(x1,0.5,(1/12)^0.5);
plot(x1,y1)
hold off
xlabel('Random variable X1')
ylabel('Probability distribution')



figure(2)
histogram(X2,100,'Normalization', 'pdf');
hold on
x2 = 0:0.01:2;
y2 = normpdf(x2,1,(2/12)^0.5);
plot(x2,y2)
hold off
xlabel('Random variable X2')
ylabel('Probability distribution')



figure(3)
histogram(X20,100,'Normalization', 'pdf');
hold on
x3 = 0:0.01:20;
y3 = normpdf(x3,10,(20/12)^0.5);
plot(x3,y3)
hold off
xlabel('Random variable X20')
ylabel('Probability distribution')

