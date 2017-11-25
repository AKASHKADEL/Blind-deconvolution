ian_img = imread('images/ian1.jpg');
imshow(ian_img)
AXIS = [323   537   205   498];
ian_img_subet = ian_img(323:537, 205:498, :); % (r,c,dimensions)
imshow(ian_img_subet)

% Trying out changing directory 
disp(pwd)
cd('code')
disp(pwd) % The directory in use for the script also gets changed (doubtful)
cd('..') % To get back to where we were before

disp(mfilename)