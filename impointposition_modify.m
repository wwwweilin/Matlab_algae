
%�õ�ÿ�����ص�Ĺ�����Ϣ��λ����Ϣ,440nm-680nm,��48ά
%AΪ������Ϣ,DΪ������Ϣ
%����ÿ����ͨ�����ƽ��������Ϣ����Ϊ����Ĳ�����

clc;
%clear;
dimension = 48;
I1=cell(1,dimension);%ͼ���ԪR
I2=cell(1,dimension);%ͼ���ԪG
I3=cell(1,dimension);%ͼ���ԪB
%D=ones(12844,dimension);%�������� ,4447Ϊa��ֵ
DM=ones(7780,1);%����max
IX=imread('F:\MATLAB7\����\color\flow_0616\pic\stract_bg1.bmp');%������ھ���A
A=zeros(7780,2);
a=0;
for m=1:600          %��ͼΪ600*600
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
%�Ѿ��õ�IX������
 [L,num]=bwlabel(IX);
 S = regionprops(L, 'Area','PixelList' ); %areaΪ��ͨ����������pixellistΪ�����ڸ������ص������
 for ikk=1:num                   %num��ʾ��ͨ����ĸ���        
      AAA = S(ikk).PixelList;     %AAAΪһ����ͨ����
      jkk=S(ikk).Area;           %jkkΪ��i���������ص�ĸ���
      D=ones(jkk,dimension);
           for i=1:dimension
                m1=imread(['F:\MATLAB7\����\color\flow_0616\pic\zaolei\',int2str(5*i+425),'.jpg']);%m1��һ�����������᲻ͣ�ı���һ��ͼƬ��Ϣ������������һ��ͼƬ����Ϣ
                m1=rgb2gray(m1);
                I1{i}=m1;
               % II{i}=im2double(I1{i});       %��ͼ����������ת��Ϊdouble
                for j=1:jkk
                    D(j,i)=I1{i}(AAA(j,1),AAA(j,2));%p(ji)
                end
            end
                for s=1:jkk         %��һ��
                    DM(s)=max(D(s,:));
                    D(s,:)= D(s,:)/ DM(s);
                end
        
         %DΪS(i)�Ĺ�����Ϣ,����mean
         if jkk~=1
             D_mean = mean(D);
         else
             D_mean = D;
         end
         S(ikk).spectral = D_mean;
         
     
 end
 %DΪ���ڷ���Ĳ�����
 D=ones(num,dimension);
 for ikk=1:num
     D(ikk,:)=S(ikk).spectral;
 end
%  %�����ݹ�һ��
%  for s=1:num
%     DMax(s)=max(D(s,:));
%     DMin(s)=min(D(s,:));
%     D(s,:)= (D(s,:)-DMin(s))/ (DMax(s)-DMin(s));
% end






















