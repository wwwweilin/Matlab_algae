
%%
%ͭ��΢����,ȡ300��
clc;
%clear;

I1=cell(1,48);%ͼ���ԪR
I2=cell(1,48);%ͼ���ԪG
I3=cell(1,48);%ͼ���ԪB
D=ones(1372,48);%��������
DM=ones(1372,1);%����max
IX=imread('F:\MATLAB7\����\color\Train\PIC\Cu\stract_bg.bmp');%������ھ���A
%IX=imread('F:\Experiment\WL\matlab\����\����\color\Train\PIC\Cu\stract_bg.bmp');%������ھ���A
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
 m1=imread(['F:\MATLAB7\����\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ
 %m1=imread(['F:\Experiment\WL\matlab\����\����\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ

 m1=rgb2gray(m1);
 I1{i}=m1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 II{i}=im2double(I1{i});       %��ͼ����������ת��Ϊdouble
[xx yy]=find(m1==max(max(m1)));   %xx,yyΪ�Ҷ�ֵ���ĵ������
 max_xy=II{i}(xx(1),yy(1));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for j=1:1372
D(j,i)=II{i}(A(j,1),A(j,2));%p(ji)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if max_xy~=0
 D(j,i)=(max_xy-D(j,i))/max_xy;   %D(j,i)��Ϊ������
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

%���ȡ��

randindex=randperm(1372); %�����1��1372��������,
Rand_D=D(randindex(1:300),:) %ȡ������ϵ�ǰ300��

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%
%С����,ȡ300��
clc;
%clear;

I1=cell(1,48);%ͼ���ԪR
I2=cell(1,48);%ͼ���ԪG
I3=cell(1,48);%ͼ���ԪB
D=ones(2361,48);%��������
DM=ones(2361,1);%����max
IX=imread('F:\MATLAB7\����\color\Train\PIC\Xqz\stract_bg.bmp');%������ھ���A
%IX=imread('F:\Experiment\WL\matlab\����\����\color\Train\PIC\Xqz\stract_bg.bmp');%������ھ���A

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
m1=imread(['F:\MATLAB7\����\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ
%m1=imread(['F:\Experiment\WL\matlab\����\����\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ

m1=rgb2gray(m1);
 I1{i}=m1;
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 II{i}=im2double(I1{i});       %��ͼ����������ת��Ϊdouble
[xx yy]=find(m1==max(max(m1)));   %xx,yyΪ�Ҷ�ֵ���ĵ������
 max_xy=II{i}(xx(1),yy(1));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for j=1:2361
D(j,i)=II{i}(A(j,1),A(j,2));%p(ji)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if max_xy~=0
 D(j,i)=(max_xy-D(j,i))/max_xy;   %D(j,i)��Ϊ������
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

%���ȡ��

randindex=randperm(2361); %�����1��50��������,
Rand_D=D(randindex(1:300),:) %ȡ������ϵ�ǰ30��



%%
%΢������,ѵ��ȡ300�飬����ȡ500
clc;
%clear;

I1=cell(1,48);%ͼ���ԪR
I2=cell(1,48);%ͼ���ԪG
I3=cell(1,48);%ͼ���ԪB
D=ones(4667,48);%��������
DM=ones(4667,1);%����max
IX=imread('F:\MATLAB7\����\color\Train\PIC\Wlv\stract_bg.bmp');%������ھ���A
%IX=imread('F:\Experiment\WL\matlab\����\����\color\Train\PIC\Wlv\stract_bg.bmp');%������ھ���A

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
 m1=imread(['F:\MATLAB7\����\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ
 %m1=imread(['F:\Experiment\WL\matlab\����\����\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ

 m1=rgb2gray(m1);
 I1{i}=m1;
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 II{i}=im2double(I1{i});       %��ͼ����������ת��Ϊdouble
[xx yy]=find(m1==max(max(m1)));   %xx,yyΪ�Ҷ�ֵ���ĵ������
 max_xy=II{i}(xx(1),yy(1));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for j=1:4667
D(j,i)=II{i}(A(j,1),A(j,2));%p(ji)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if max_xy~=0
 D(j,i)=(max_xy-D(j,i))/max_xy;   %D(j,i)��Ϊ������
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

%���ȡ��

randindex=randperm(4667); %�����1��50��������,
Rand_D=D(randindex(1:300),:) %ȡ������ϵ�ǰ30��















