% 对不同的样品进行截图，选择数目多的部分

%%
%铜绿微囊藻
 for i=1:48  
 I=imread(['G:\实验数据\藻类实验\0602\cu\10x\',int2str(5*i+425),'.jpg']); %430nm--700nm
 % I=imread(['F:\Experiment\WL\藻类实验\藻类实验\0602\cu\10x\',int2str(5*i+425),'.jpg']); %430nm--700nm
 I_cropped = imcrop(I,[22,226,400,700]);         
  imwrite( I_cropped ,['F:\MATLAB7\藻类\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);
 %imwrite( I_cropped ,['F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Cu\',int2str(5*i+425),'.jpg']);
 end
 
 
 %%
 %小球藻
  for i=1:48  
  I=imread(['G:\实验数据\藻类实验\0525\x-10x\',int2str(5*i+425),'.jpg']);     %430nm--700nm
  %I=imread(['F:\Experiment\WL\藻类实验\藻类实验\0525\x-10x\',int2str(5*i+425),'.jpg']);
  I_cropped = imcrop(I,[73,83,470,300]);     
   imwrite( I_cropped ,['F:\MATLAB7\藻类\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);
  %imwrite( I_cropped ,['F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Xqz\',int2str(5*i+425),'.jpg']);
  end
 
  
  
 %%
 %微绿球藻
  for i=1:48  
 I=imread(['G:\实验数据\藻类实验\20160513\20160513\20160513\wlv\10x_2\',int2str(5*i+425),'.jpg']);     %430nm--700nm
 %I=imread(['F:\Experiment\WL\藻类实验\藻类实验\20160513\20160513\20160513\wlv\10x_2\',int2str(5*i+425),'.jpg']);     %430nm--700nm
 I_cropped = imcrop(I,[58,211,500,600]);               
  imwrite( I_cropped ,['F:\MATLAB7\藻类\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);
 %imwrite( I_cropped ,['F:\Experiment\WL\matlab\藻类\藻类\color\Train\PIC\Wlv\',int2str(5*i+425),'.jpg']);
  end
 