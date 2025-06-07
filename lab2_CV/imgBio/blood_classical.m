clear;
 clc;
load('blood.mat', 'B');
 % h=[1/10 1/10]; %10 point-moving average
 h=[0.5,0.5]; % 2 point-moving average

 subplot(1, 3, 1);
 y =conv2(B,h);
 imshow(y,[0 255]);
 title("2 points average");

 subplot(1, 3, 2);
 h = 0.5 * ones(1, 5);
 y = conv2(B, h);
 imshow(y, [0, 255]);
 title("5 points average");

 subplot(1, 3, 3);
 h = 0.5 * ones(1, 10);
 y = conv2(B, h);
 imshow(y, [0, 255]);
 title("10 points average");

 %% linear different
 clear;
 clc;
 load('blood.mat');
 h=[1,-1];
 y =conv2(B,h);
 imshow(y,[0 255]);
 title("linear different filter");