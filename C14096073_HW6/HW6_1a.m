x=0:1:100;
y=1000:1:2000;
[X,Y]=meshgrid(x,y);

figure(1)
p1=HW6_1_fun(X,Y,50,20,1500,200,0);
imagesc(x,y,p1)
colormap(jet)
axis xy;
title('[𝜇x, 𝜎x, 𝜇y, 𝜎y, 𝜌] = [50, 20, 1500, 200, 0]')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar

figure(2)
p2=HW6_1_fun(X,Y,50,20,1500,200,0.3);
imagesc(x,y,p2)
colormap(jet)
axis xy;
title('[𝜇x, 𝜎x, 𝜇y, 𝜎y, 𝜌] = [50, 20, 1500, 200, 0.3]')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar

figure(3)
p3=HW6_1_fun(X,Y,50,20,1500,200,0.8);
imagesc(x,y,p3)
colormap(jet)
axis xy;
title('[𝜇x, 𝜎x, 𝜇y, 𝜎y, 𝜌] = [50, 20, 1500, 200, 0.8]')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar

figure(4)
p4=HW6_1_fun(X,Y,50,20,1500,200,-0.8);
imagesc(x,y,p4)
colormap(jet)
axis xy;
title('[𝜇x, 𝜎x, 𝜇y, 𝜎y, 𝜌] = [50, 20, 1500, 200, -0.8]')
xlabel('Random variable X')
ylabel('Random variable Y')
colorbar