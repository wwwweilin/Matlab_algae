%UΪ������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%load U;
IX=zeros(601,601);
IX=uint8(IX);
%p=[p1(1:50000,:);p2(1:50000,:);p3(1:46193,:)];
A=PLA;
px=uint8(U)
for ikk = 1:num
S(ikk).clsfy = 80*px(ikk);
end
% for i=1:12844
%     IX(A(i,1),A(i,2))=80*px(i);
% end
%imshow(IX)
% imwrite(IX,'F:\MATLAB7\����\color\Flow_20150527\PIC\after_pca_test2.jpg')  %������ͼƬ

%  [L,num]=bwlabel(IX);
%  S = regionprops(L, 'Area','PixelList' ); %areaΪ��ͨ����������pixellistΪ�����ڸ������ص������
%  bw2 = ismember(L, find([S.Area] >= 10));
%  imshow(bw2);

% ������������ʱ
%  for i=1:num
%      AAA = S(i).PixelList;
%         for j=1:S(i).Area
%              if S(i).clsfy==80         %ֵΪ80
%                for jj=1:S(i).Area
%                     IX(AAA(jj,2),AAA(jj,1))=80;
%                 end
%              elseif S(i).clsfy==160
%                   for jj=1:S(i).Area
%                     IX(AAA(jj,2),AAA(jj,1))=160;
%                   end
%              else
%                  for jj=1:S(i).Area
%                     IX(AAA(jj,2),AAA(jj,1))=240;
%                   end
%              end
%         end
%  end

% ����������ʱ

for i=1:num
     AAA = S(i).PixelList;
        for j=1:S(i).Area
             if S(i).clsfy==80         %ֵΪ80
               for jj=1:S(i).Area
                    IX(AAA(jj,2),AAA(jj,1))=80;
               end
             else
                 for jj=1:S(i).Area
                    IX(AAA(jj,2),AAA(jj,1))=160;
                  end
             end
        end
 end

         
     
     
 
 
 
 imshow(IX);
 imwrite(IX,'F:\MATLAB7\����\color\flow_0616\pic\after1.jpg')