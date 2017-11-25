motion0050 %name of the image

deblur('ian.mat') % this will produce all the outputs but won't save them to disk

plotgray('temp_ian1') % doesn't work! some changes are to be made
plotgray('lyndsey2') %works!!!


%%%%%%%%%%%%%%%%%%%%%%%%%
% Resize & save img     %
%%%%%%%%%%%%%%%%%%%%%%%%%
m = imread('motion0050.jpg')
m2 = imresize(m,2)
imwrite(m2,'sample.jpg','jpg','Comment','My JPEG file')