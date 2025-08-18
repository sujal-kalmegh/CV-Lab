clc;
clear;
close all;

img = imread('saturn.png');
img = im2double(img);

figure('Name', 'Original Image');
imshow(img);
title('Original Image');

gray_img = rgb2gray(img);


%% Negative Image
negative_img = 1 - gray_img;

figure('Name', 'Negative Transformation');
imshow(negative_img);
title('Negative Image');

%% log transformation
c = 1; 
log_img = c * log(1 + gray_img);
log_img = mat2gray(log_img);
figure('Name', 'Logarithmic Transformation');
imshow(log_img);
title('Logarithmic Transformation');


%% gamma transformation

gamma = 0.5;
power_img = img .^ gamma;

figure;
imshow(power_img);
title('Power law transformation (Gamma)');