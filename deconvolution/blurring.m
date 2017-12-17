function [blurredImage] = blurring(I)

blurredImage = imgaussfilt(I, 2);
imshow(blurredImage);