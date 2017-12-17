function [deconImage] = deconBlind(I)

I = im2double(I);
PSF = fspecial('gaussian',7,10);
V = .0001;
WT = zeros(size(I));
WT(5:end-4,5:end-4) = 1;
INITPSF = ones(size(PSF));
[J P] = deconvblind(I,INITPSF,20,10*sqrt(V),WT);
deconImage = J;
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(deconImage);