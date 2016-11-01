%取所有波段，440nm—670nm,取100组

%%
%铜绿微囊藻
clc;
clear;
I=cell(100,48);%图像胞元
II=cell(100,48);
D=ones(100,48);%透射率数据作Y
DM=ones(1,1);%数据max
Z=ones(100,48);%波段数据作X
%实时提取像素点并对矩阵元素取整
I2=imread('F:\MATLAB7\藻类\color\Flow_20150527\PIC\zaolei\555.jpg');
imshow(I2);
xqz_ts_p=ginput(100); %get 25 pionts
xqz_ts_p=[xqz_ts_p(:,2),xqz_ts_p(:,1)];
xqz_ts_p=floor(xqz_ts_p);%取整

 for i=1:48  
 m1=imread(['F:\MATLAB7\藻类\color\Flow_20150527\PIC\zaolei\',int2str(5*i+435),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息
 m22=rgb2gray(m1);
 m2=uint8(m22);
 I{i}=m2;             %m2为灰度值
 
[xx yy]=find(m22==max(max(m22)));   %xx,yy为灰度值最大的点的坐标
%max_xy=I{i}(xx(1),yy(1));   %max_xy为最大的灰度值
II{i}=im2double(I{i});       %将图像数据类型转换为double
max_xy=II{i}(xx(1),yy(1));

    for j=1:100
    D(j,i)=II{i}(xqz_ts_p(j,1),xqz_ts_p(j,2));%p(ji)
        if max_xy~=0
             D(j,i)=D(j,i)/max_xy;   %D(j,i)变为透射率
        else
            D(j,i)=0;
        end
    end
    Z(:,i)=5*i+435;
 end
Z=Z';
D=D'; 

Y1=reshape(D,4800,1);%数据矩阵变为列向量
X1=reshape(Z,4800,1);%波段矩阵变为列向量
figure;
plot(X1,Y1);
axis([440 675 0 1.1])
hold on;
xlabel('波段（nm）');
ylabel('透射');


%%




