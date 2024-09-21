function[X]=HW7_1afun(n)
X=zeros(1,1000000);
for i=1:n
    U=rand(1,1000000);
    for j=1:1000000
        X(1,j)=X(1,j)+U(1,j);
    end
end
