clear;
clc;
load('echart.mat', 'echart');

% Horizontal edge filter
Gx = [1 0 -1;
  1 0 -1;
  1 0 -1];

% Vertical edge filter
Gy = [1  1  1;
  0  0  0;
 -1 -1 -1];

Ix = conv2(double(echart), Gx, 'same');  % Horizontal grad
Iy = conv2(double(echart), Gy, 'same');  % Vertical grad

edge_mag = sqrt(Ix.^2 + Iy.^2);

subplot(1, 2, 1);
show_img(echart, 1, 1);
title("Original Image");

subplot(1, 2, 2);
show_img(edge_mag, 1, 1); 
title('Edge Magnitude');