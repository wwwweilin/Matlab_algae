   %%
   %ͭ��΢����
    clc;
    clear;
    I = imread('F:\MATLAB7\����\color\Train\PIC\Cu\555.jpg');  
    I=rgb2gray(I)
    level = graythresh(I);
    BW = im2bw(I,level);
    BW=~BW;
    figure, imshow(BW)
    imwrite(BW,['F:\MATLAB7\����\color\Train\PIC\Cu\stract_bg.bmp']);  
    
    
   %%
    %С����
    clc;
    clear;
    I = imread('F:\MATLAB7\����\color\Train\PIC\Xqz\555.jpg');  
    I=rgb2gray(I)
    level = graythresh(I);
    BW = im2bw(I,level);
    BW=~BW;
    figure, imshow(BW)
    imwrite(BW,['F:\MATLAB7\����\color\Train\PIC\Xqz\stract_bg.bmp']);  

   %%
    %΢������
    clc;
    clear;
    I = imread('F:\MATLAB7\����\color\Train\PIC\Wlv\555.jpg');  
    I=rgb2gray(I)
    level = graythresh(I);
    BW = im2bw(I,level);
    BW=~BW;
    figure, imshow(BW)
    imwrite(BW,['F:\MATLAB7\����\color\Train\PIC\Wlv\stract_bg.bmp']);  