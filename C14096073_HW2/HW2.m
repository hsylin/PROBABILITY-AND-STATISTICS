%a
[A]=HW2_a(10000,0.02);
A;

%b
B=eye(1,1000);
for i=1:1000
    [A]=HW2_a(10000,0.02);
        B(1,i) = sum(A,'all');
end
B;
histogram(B,'BinWidth',5,'Normalization','probability');
xlabel('number of defective')
ylabel('relative frequency')
save('HW2_b.mat','B')

%c
C=eye(1,10);
for i=1:10
    [B1]=HW2_a(30000,0.02);
    [B2]=HW2_a(45000,0.03);
    [B3]=HW2_a(25000,0.02);
    C(1,i)=sum(B3,'all')/(sum(B1,'all')+sum(B2,'all')+sum(B3,'all'));
end
save('HW2_c.mat','C')
%use to comapre with theoretical value 
fprintf("mean of 10 experiments=%.5g'\n'",mean(C));
figure(2)
boxplot(C)
ylabel('p(B3|A)')

    