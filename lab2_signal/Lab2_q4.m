clear;
clc;
load('moon.mat', 'moon');

original = double(moon);

figure(1);
imshow(uint8(original));
title('Original Image');

% blur image
B = [1/10 1/10 1/10;
    1/10 1/10 1/10;
    1/10 1/10 1/10;];
blurred = conv2(original, B, 'same');

% Unsharp masking
mask = original - blurred;
alpha = 1.0;
sharpened = original + alpha * mask;

% Clip values to [0, 255]
sharpened = max(min(sharpened, 255), 0);

% Display sharpened image
figure(2);
imshow(uint8(sharpened));
title('Sharpened Image');

%% test
figure(1);
imshow(uint8(mask));
title("Mask");