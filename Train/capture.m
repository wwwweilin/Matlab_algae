% �Բ�ͬ����Ʒ���н�ͼ��ѡ����Ŀ��Ĳ���

%%
%ͭ��΢����
 for i=1:48  
 I=imread(['G:\ʵ������\����ʵ��\0602\cu\10x\',int2str(5*i+425),'.jpg']); %430nm--700nm
 % I=imread(['F:\Experiment\WL\����ʵ��\����ʵ��\0602\cu\10x\',int2str(5*i+425),'.jpg']); %430nm--700nm
 I_cropped = imcrop(I,[22,226,400,700]);         
  imwrite( I_cropped ,['F:\MATLAB7\����\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);
 %imwrite( I_cropped ,['F:\Experiment\WL\matlab\����\����\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);
 end
 
 
 %%
 %С����
  for i=1:48  
  I=imread(['G:\ʵ������\����ʵ��\0525\x-10x\',int2str(5*i+425),'.jpg']);     %430nm--700nm
  %I=imread(['F:\Experiment\WL\����ʵ��\����ʵ��\0525\x-10x\',int2str(5*i+425),'.jpg']);
  I_cropped = imcrop(I,[73,83,470,300]);     
   imwrite( I_cropped ,['F:\MATLAB7\����\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);
  %imwrite( I_cropped ,['F:\Experiment\WL\matlab\����\����\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);
  end
 
  
  
 %%
 %΢������
  for i=1:48  
 I=imread(['G:\ʵ������\����ʵ��\20160513\20160513\20160513\wlv\10x_2\',int2str(5*i+425),'.jpg']);     %430nm--700nm
 %I=imread(['F:\Experiment\WL\����ʵ��\����ʵ��\20160513\20160513\20160513\wlv\10x_2\',int2str(5*i+425),'.jpg']);     %430nm--700nm
 I_cropped = imcrop(I,[58,211,500,600]);               
  imwrite( I_cropped ,['F:\MATLAB7\����\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);
 %imwrite( I_cropped ,['F:\Experiment\WL\matlab\����\����\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);
  end
 