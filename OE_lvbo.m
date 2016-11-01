clc;
clear;
I=imread('F:\MATLAB7\ÔåÀà\color\flow_0616\pic\after1.jpg');
%I=rgb2gray(I)
I=double(I);
[m,n]=size(I);
c=256;
for i=1:m
    for j=1:n
if I(i,j)<=2*c/5
    R(i,j)=0;
    G(i,j)=4*I(i,j);
    B(i,j)=0;
else if I(i,j)<=200
        R(i,j)=2.55*I(i,j);
        G(i,j)=1.55*I(i,j);
        B(i,j)=0;
    else if I(i,j)<=c
            R(i,j)=0;
            G(i,j)=4*I(i,j);
            B(i,j)=0;
        end
    end
end
end
    end

for i=1:m
    for j=1:n
        out(i,j,1)=R(i,j);
        out(i,j,2)=G(i,j);
        out(i,j,3)=B(i,j);
    end
end
out=out/256;
figure(1),imshow(out)
new=out;
fR=new(:,:,1);
fG=new(:,:,2);
fB=new(:,:,3);
w=fspecial('average');
fR_filtered=imfilter(fR,w,'replicate');
fG_filtered=imfilter(fG,w,'replicate');
fB_filtered=imfilter(fB,w,'replicate');
fc_filtered=cat(3,fR_filtered,fG_filtered,fB_filtered);
fR_medfilt2=medfilt2(fR,[5 5]);
fG_medfilt2=medfilt2(fG,[5 5]);
fB_medfilt2=medfilt2(fB,[5 5]);
fc_medfilt2=cat(3,fR_medfilt2,fG_medfilt2,fB_medfilt2);
%subplot(2,2,1);imshow(f);title('1')
imshow(fc_medfilt2);
imwrite(fc_medfilt2,'F:\MATLAB7\ÔåÀà\color\flow_0616\pic\after_lvbo1.jpg');