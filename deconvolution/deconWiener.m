dfunction [deconImage] = deconWiener(I)

I = im2double(I);
PSF = fspecial('gaussian',7,10);
V = .0001;
WT = zeros(size(I));
WT(5:end-4,5:end-4) = 1;
INITPSF = ones(size(PSF));
noise_var = 0.0001;
estimated_nsr = noise_var / var(I(:))
wnr = deconvwnr(I,PSF,estimated_nsr);
deconImage = wnr;
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(deconImage);