filename = 'MRI_brain_14slices.mat'; 
storedStructure = load(filename);
imageArray = storedStructure. MRI_brain; 
image1 = imageArray(:,:,1);
figure(1)
imshow(image1,[]); 
colormap(gray);
set(gca,'dataaspectratio',[1 1 1]);

%b
B = reshape(imageArray,7884800,1);
figure(2)
histogram(B,300)
title('intensity histogram')
xlabel('image intensity')
ylabel('pixel count')

%c
thresholdValue1 = 466;
thresholdValue2 = 1014;
binaryImage1 = imageArray < thresholdValue1;
binaryImage1 = imfill(binaryImage1, 'holes');
figure(3)
imshow(binaryImage1(:,:,1),[]); 
title('binary mask 1')

binaryImage2 = (thresholdValue1<=imageArray)& (imageArray<= thresholdValue2);
binaryImage2 = imfill(binaryImage2, 'holes');
figure(4)
imshow(binaryImage2(:,:,1),[]); 
title('binary mask 2')

binaryImage3 = imageArray > thresholdValue2;
binaryImage3 = imfill(binaryImage3, 'holes');
figure(5)
imshow(binaryImage3(:,:,1),[]); 
title('binary mask 3')

%d
figure(6)
x = 0:.1:3000;
y1 = normpdf(x,326,60);
y2 = normpdf(x,808,180);
y3 = normpdf(x,1196,130);
plot(x,y1)
hold on
plot(x,y2)
plot(x,y3)
plot(x,y1+y2+y3)
hold off
legend('tissue1','tissue2','tissue3','all tissues')
xlabel('image intensity')
ylabel('frequency(pixel count)')


       