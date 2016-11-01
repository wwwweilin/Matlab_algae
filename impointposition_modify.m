
%得到每个像素点的光谱信息和位置信息,440nm-680nm,共48维
%A为坐标信息,D为光谱信息
%计算每个联通区域的平均光谱信息，作为分类的测试组

clc;
%clear;
dimension = 48;
I1=cell(1,dimension);%图像胞元R
I2=cell(1,dimension);%图像胞元G
I3=cell(1,dimension);%图像胞元B
%D=ones(12844,dimension);%光谱数据 ,4447为a的值
DM=ones(7780,1);%数据max
IX=imread('F:\MATLAB7\藻类\color\flow_0616\pic\stract_bg1.bmp');%坐标存于矩阵A
A=zeros(7780,2);
a=0;
for m=1:600          %截图为600*600
    for n=1:600
        if IX(m,n)~=0
            a=a+1;
            A(a,1)=m;
            A(a,2)=n;
        end
    end
end
PLA=A;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%已经得到IX的坐标
 [L,num]=bwlabel(IX);
 S = regionprops(L, 'Area','PixelList' ); %area为联通区域的面积，pixellist为区域内各个像素点的坐标
 for ikk=1:num                   %num表示联通区域的个数        
      AAA = S(ikk).PixelList;     %AAA为一个联通区域
      jkk=S(ikk).Area;           %jkk为第i个区域像素点的个数
      D=ones(jkk,dimension);
           for i=1:dimension
                m1=imread(['F:\MATLAB7\藻类\color\flow_0616\pic\zaolei\',int2str(5*i+425),'.jpg']);%m1是一个公共变量会不停的被下一张图片信息覆盖最后是最后一张图片的信息
                m1=rgb2gray(m1);
                I1{i}=m1;
               % II{i}=im2double(I1{i});       %将图像数据类型转换为double
                for j=1:jkk
                    D(j,i)=I1{i}(AAA(j,1),AAA(j,2));%p(ji)
                end
            end
                for s=1:jkk         %归一化
                    DM(s)=max(D(s,:));
                    D(s,:)= D(s,:)/ DM(s);
                end
        
         %D为S(i)的光谱信息,再求mean
         if jkk~=1
             D_mean = mean(D);
         else
             D_mean = D;
         end
         S(ikk).spectral = D_mean;
         
     
 end
 %D为用于分类的测试组
 D=ones(num,dimension);
 for ikk=1:num
     D(ikk,:)=S(ikk).spectral;
 end
%  %将数据归一化
%  for s=1:num
%     DMax(s)=max(D(s,:));
%     DMin(s)=min(D(s,:));
%     D(s,:)= (D(s,:)-DMin(s))/ (DMax(s)-DMin(s));
% end






















