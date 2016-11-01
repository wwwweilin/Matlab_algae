   %%
   %Õ≠¬ÃŒ¢ƒ“‘Â
    clc;
    clear;
    I = imread('F:\MATLAB7\‘Â¿‡\color\Train\PIC\Cu\555.jpg');  
    I=rgb2gray(I)
    level = graythresh(I);
    BW = im2bw(I,level);
    BW=~BW;
    figure, imshow(BW)
    imwrite(BW,['F:\MATLAB7\‘Â¿‡\color\Train\PIC\Cu\stract_bg.bmp']);  
    
    
   %%
    %–°«Ú‘Â
    clc;
    clear;
    I = imread('F:\MATLAB7\‘Â¿‡\color\Train\PIC\Xqz\555.jpg');  
    I=rgb2gray(I)
    level = graythresh(I);
    BW = im2bw(I,level);
    BW=~BW;
    figure, imshow(BW)
    imwrite(BW,['F:\MATLAB7\‘Â¿‡\color\Train\PIC\Xqz\stract_bg.bmp']);  

   %%
    %Œ¢¬Ã«Ú‘Â
    clc;
    clear;
    I = imread('F:\MATLAB7\‘Â¿‡\color\Train\PIC\Wlv\555.jpg');  
    I=rgb2gray(I)
    level = graythresh(I);
    BW = im2bw(I,level);
    BW=~BW;
    figure, imshow(BW)
    imwrite(BW,['F:\MATLAB7\‘Â¿‡\color\Train\PIC\Wlv\stract_bg.bmp']);  