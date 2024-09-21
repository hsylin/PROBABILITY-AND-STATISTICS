x=0:1:100;
y=1000:1:2000;
[X,Y]=meshgrid(x,y);

figure(1)
p1=HW6_1_fun(X,Y,25, 30, 1250, 300, 0);
imagesc(x,y,p1)
axis xy;
colormap(jet)
title('Case 1 Distribution 1')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar

figure(2)
p2=HW6_1_fun(X,Y,75, 30, 1750, 300, 0);
imagesc(x,y,p2)
axis xy;
colormap(jet)
title('Case 1 Distribution 2')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar


p3=eye(1001,101);
for i=1:1001
    for j=1:101
        v=abs(p2(i,j)-p1(i,j));
        if v<0.005*max(max(p1(:)),max(p2(:)))
            p3(i,j)=1;
        else
            p3(i,j)=0;
        end
    end
end
figure(3)
imagesc(x,y,p3)
axis xy;
colormap(jet)
title('Case 1 Decision boundaries')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar


figure(4)
p4=HW6_1_fun(X,Y,25, 20, 1250, 200, 0);
imagesc(x,y,p4)
axis xy;
colormap(jet)
title('Case 2 Distribution 1')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar

figure(5)
p5=HW6_1_fun(X,Y,75, 30, 1750, 300, 0);
imagesc(x,y,p5)
axis xy;
colormap(jet)
title('Case 2 Distribution 2')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar


p6=eye(1001,101);
for i=1:1001
    for j=1:101
        v=abs(p4(i,j)-p5(i,j));
        if v<0.005*max(max(p4(:)),max(p5(:)))
            p6(i,j)=1;
        else
            p6(i,j)=0;
        end
    end
end
figure(6)
imagesc(x,y,p6)
axis xy;
colormap(jet)
title('Case 2 Decision boundaries')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar