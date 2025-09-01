% Read the input image
img = imread('saturn.png');

% Convert to grayscale if image is RGB
if size(img, 3) == 3
    grayImg = rgb2gray(img);
else
    grayImg = img;
end

% Detect SIFT keypoints
keypoints = detectSIFTFeatures(grayImg);

% Extract features (descriptors)
[features, valid_points] = extractFeatures(grayImg, keypoints);

% Visualize keypoints on the image
imshow(img);
hold on;
plot(valid_points.selectStrongest(100)); % plot strongest 100 keypoints
title('Detected SIFT Keypoints');
hold off;
