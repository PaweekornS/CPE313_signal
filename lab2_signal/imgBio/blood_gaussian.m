clear;
clc;
load('blood.mat');

subplot(1,3,1);
imshow(B);
title("Original");

sd=2;
y = imgaussfilt(B, sd);
subplot(1,3,2);
imshow(y,[0 255]);
title("Gaussian filter (sd=2)");

sd=5;
y = imgaussfilt(B, sd);
subplot(1,3,3);
imshow(y,[0 255]);
title("Gaussian filter (sd=5)");