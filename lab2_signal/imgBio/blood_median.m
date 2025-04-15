clear;
 clc;
 load('saltpep.mat');
 subplot(1,2,1); 
 imshow(B);
 title("Original");

 y = medfilt2(B);
 subplot(1,2,2);
 imshow(y,[0 255]);
 title("Median filter");