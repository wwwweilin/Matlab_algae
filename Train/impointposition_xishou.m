
%%
%铜绿微囊藻,取300组
clc;
%clear;

I1=cell(1,48);%图像胞元R
I2=cell(1,48);%图像胞元G
I3=cell(1,48);%图像胞元B
D=ones(1372,48);%光谱数据
DM=ones(1372,1);%数据max
IX=imread('F:\MATLAB7\藻类\color\Train\PIC\Cu\stract_bg.bmp');%坐标存于矩阵A
%IX=imread('F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Cu\stract_bg.bmp');%坐标存于矩阵A
A=zeros(1372,2);
a=0;
for m=1:701
    for n=1:401
        if IX(m,n)~=0
            a=a+1;
            A(a,1)=m;
            A(a,2)=n;
        end
    end
end

for i=1:48
 m1=imread(['F:\MATLAB7\藻类\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息
 %m1=imread(['F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息

 m1=rgb2gray(m1);
 I1{i}=m1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 II{i}=im2double(I1{i});       %将图像数据类型转换为double
[xx yy]=find(m1==max(max(m1)));   %xx,yy为灰度值最大的点的坐标
 max_xy=II{i}(xx(1),yy(1));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for j=1:1372
D(j,i)=II{i}(A(j,1),A(j,2));%p(ji)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if max_xy~=0
 D(j,i)=(max_xy-D(j,i))/max_xy;   %D(j,i)变为吸收率
else
D(j,i)=0;               
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 end
 end
 for s=1:1372
    DM(s)=max(D(s,:));
    D(s,:)= D(s,:)/ DM(s);
 end
PLA=A;

%随机取点

randindex=randperm(1372); %这个是1到1372的随机组合,
Rand_D=D(randindex(1:300),:) %取上述组合的前300行

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%
%小球藻,取300组
clc;
%clear;

I1=cell(1,48);%图像胞元R
I2=cell(1,48);%图像胞元G
I3=cell(1,48);%图像胞元B
D=ones(2361,48);%光谱数据
DM=ones(2361,1);%数据max
IX=imread('F:\MATLAB7\藻类\color\Train\PIC\Xqz\stract_bg.bmp');%坐标存于矩阵A
%IX=imread('F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Xqz\stract_bg.bmp');%坐标存于矩阵A

A=zeros(2361,2);
a=0;
for m=1:301
    for n=1:471
        if IX(m,n)~=0
            a=a+1;
            A(a,1)=m;
            A(a,2)=n;
        end
    end
end

for i=1:48
m1=imread(['F:\MATLAB7\藻类\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息
%m1=imread(['F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息

m1=rgb2gray(m1);
 I1{i}=m1;
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 II{i}=im2double(I1{i});       %将图像数据类型转换为double
[xx yy]=find(m1==max(max(m1)));   %xx,yy为灰度值最大的点的坐标
 max_xy=II{i}(xx(1),yy(1));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for j=1:2361
D(j,i)=II{i}(A(j,1),A(j,2));%p(ji)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if max_xy~=0
 D(j,i)=(max_xy-D(j,i))/max_xy;   %D(j,i)变为吸收率
else
D(j,i)=0;               
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 end
 end
 for s=1:2361
    DM(s)=max(D(s,:));
    D(s,:)= D(s,:)/ DM(s);
 end
PLA=A;

%随机取点

randindex=randperm(2361); %这个是1到50的随机组合,
Rand_D=D(randindex(1:300),:) %取上述组合的前30行



%%
%微绿球藻,训练取300组，测试取500
clc;
%clear;

I1=cell(1,48);%图像胞元R
I2=cell(1,48);%图像胞元G
I3=cell(1,48);%图像胞元B
D=ones(4667,48);%光谱数据
DM=ones(4667,1);%数据max
IX=imread('F:\MATLAB7\藻类\color\Train\PIC\Wlv\stract_bg.bmp');%坐标存于矩阵A
%IX=imread('F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Wlv\stract_bg.bmp');%坐标存于矩阵A

A=zeros(4667,2);
a=0;
for m=1:601
    for n=1:501
        if IX(m,n)~=0
            a=a+1;
            A(a,1)=m;
            A(a,2)=n;
        end
    end
end

for i=1:48
 m1=imread(['F:\MATLAB7\藻类\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息
 %m1=imread(['F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息

 m1=rgb2gray(m1);
 I1{i}=m1;
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 II{i}=im2double(I1{i});       %将图像数据类型转换为double
[xx yy]=find(m1==max(max(m1)));   %xx,yy为灰度值最大的点的坐标
 max_xy=II{i}(xx(1),yy(1));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for j=1:4667
D(j,i)=II{i}(A(j,1),A(j,2));%p(ji)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if max_xy~=0
 D(j,i)=(max_xy-D(j,i))/max_xy;   %D(j,i)变为吸收率
else
D(j,i)=0;               
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 end
 end
 for s=1:4667
    DM(s)=max(D(s,:));
    D(s,:)= D(s,:)/ DM(s);
 end
PLA=A;

%随机取点

randindex=randperm(4667); %这个是1到50的随机组合,
Rand_D=D(randindex(1:300),:) %取上述组合的前30行















