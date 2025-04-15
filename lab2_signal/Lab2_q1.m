clear;
clc;

load('lena512.mat', 'lena512');
figure(1);
show_img(lena512, 1, 1)

y1 = lena512(20, :);
y2 = lena512(100, :);
y3 = lena512(250, :);
figure(2);
subplot(3, 1, 1); plot(y1); title('Color distribution of row 20th');
xlim([0 512]); ylim([0 255]);

subplot(3, 1, 2); plot(y2); title('Color distribution of row 100th');
xlim([0 512]); ylim([0 255]);

subplot(3, 1, 3); plot(y3); title('Color distribution of row 250th');
xlim([0 512]); ylim([0 255]);

% เส้นกราฟที่ขึ้น ลงเยอะๆ = ความถี่สูง
