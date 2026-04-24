img = imread('D:\University\252\DSP\Scilab Files\Lab4\chicken.jpg');     
gray_img = rgb2gray(img);          
clf();

subplot(1,2,1);
imshow(gray_img);
title('Gray Image');

subplot(1,2,2);
plot(imhist(gray_img));
title('Histograph of Gray Image');



