%ȡ���в��Σ�440nm��670nm,ȡ100��

%%
%ͭ��΢����
clc;
clear;
I=cell(100,48);%ͼ���Ԫ
II=cell(100,48);
D=ones(100,48);%͸����������Y
DM=ones(1,1);%����max
Z=ones(100,48);%����������X
%ʵʱ��ȡ���ص㲢�Ծ���Ԫ��ȡ��
I2=imread('F:\MATLAB7\����\color\Flow_20150527\PIC\zaolei\555.jpg');
imshow(I2);
xqz_ts_p=ginput(100); %get 25 pionts
xqz_ts_p=[xqz_ts_p(:,2),xqz_ts_p(:,1)];
xqz_ts_p=floor(xqz_ts_p);%ȡ��

 for i=1:48  
 m1=imread(['F:\MATLAB7\����\color\Flow_20150527\PIC\zaolei\',int2str(5*i+435),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ
 m22=rgb2gray(m1);
 m2=uint8(m22);
 I{i}=m2;             %m2Ϊ�Ҷ�ֵ
 
[xx yy]=find(m22==max(max(m22)));   %xx,yyΪ�Ҷ�ֵ���ĵ������
%max_xy=I{i}(xx(1),yy(1));   %max_xyΪ���ĻҶ�ֵ
II{i}=im2double(I{i});       %��ͼ����������ת��Ϊdouble
max_xy=II{i}(xx(1),yy(1));

    for j=1:100
    D(j,i)=II{i}(xqz_ts_p(j,1),xqz_ts_p(j,2));%p(ji)
        if max_xy~=0
             D(j,i)=D(j,i)/max_xy;   %D(j,i)��Ϊ͸����
        else
            D(j,i)=0;
        end
    end
    Z(:,i)=5*i+435;
 end
Z=Z';
D=D'; 

Y1=reshape(D,4800,1);%���ݾ����Ϊ������
X1=reshape(Z,4800,1);%���ξ����Ϊ������
figure;
plot(X1,Y1);
axis([440 675 0 1.1])
hold on;
xlabel('���Σ�nm��');
ylabel('͸��');


%%




