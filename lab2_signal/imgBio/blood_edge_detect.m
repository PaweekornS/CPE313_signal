clear;
clc;

load('circuit.mat');
subplot(2,2,1);  imshow (B);
title("Original");

y1 = edge(B,'prewitt'); % change method to Canny, Sobel
subplot (2,2,2); imshow(y1,[0 1]);
title("Prewitt method");

y2 = edge(B,'canny');
subplot (2,2,3); imshow(y2,[0 1]);
title("Canny method");

y3 = edge(B,'sobel');
subplot (2,2,4); imshow(y3,[0 1]);
title("Sobel method");