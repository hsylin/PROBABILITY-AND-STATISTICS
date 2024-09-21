y=eye(1,10000);
y=HW5_2_bfun(10000);
figure
histogram(y,'BinWidth',0.999999,'Normalization','probability')
xlabel('X')
ylabel('f(x)')
title('probability distribution f(x) versus X')