clear;
 clc;
 load('lena512.mat');
 figure(1);
 show_img(lena512,1,1);
 title("Original lena");

 lena20=lena512(200,:);
 B=[1/6, 1/6, 1/6, 1/6, 1/6, 1/6]; % B parameter of filter function
 A=[1]; % A parameter of filter function
 y_lena20=filter(B,A,lena20);

 figure(2);
 subplot(2,1,1)
 plot(lena20);
 title("Lena20");

 subplot(2,1,2)
 plot(y_lena20);
 title("Lena20 - filtered");

 %% freqz test
 [H, W] = freqz(B, A);
 plot(abs(H));
 title("Frequency response of lena20")
 xlabel("freq (Hz)");
 ylabel("magnitude");

 %% choice 2
clear;
 clc;
 load('lena512.mat'); % you can use whos to view the loaded variable

 subplot(1, 3, 1);
 B=[1/6 1/6 1/6 1/6 1/6 1/6];
 y_lena=conv2(lena512,B);
 show_img(y_lena,1,1);
 title("6 points average");

 subplot(1, 3, 2);
 B=[1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6];
 y_lena=conv2(lena512,B);
 show_img(y_lena,1,1);
 title("10 points average");

 subplot(1, 3, 3);
 B=[1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6 1/6];
 y_lena=conv2(lena512,B);
 show_img(y_lena,1,1);
 title("15 points average");

%% choice 3
clear;
 clc;
 load('lena512.mat'); % you can use whos to view the loaded variable
 B=[1/6 1/6 1/6 1/6 1/6 1/6].'; % transpose to make B be a column vector
 y_lena=conv2(lena512,B);
 show_img(y_lena,1,1);
 title("Conv2D vertical")
