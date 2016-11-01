%将所有的图都截取一部分
%1.Ostu.m抠图，得到binary image
%2.impointpostition.m得到所有像素点的位置信息矩阵PLA和光谱数据矩阵D.
%3.r00pionts.m得到100个像素点的数据信息，作为Fisher训练样本.
%4.使用OE_excel_write.m把光谱信息写入Excel,其中excel每个sheet最多容纳50000columns.
%5.把excel光谱信息导入spss，结合r100pionts的结果分类
%6.分类的结果part1,part2等合并成矩阵U.
%7.结合矩阵U，使用creatgrayscaleimg.m创建新的图像矩阵。
%8.使用OE_lvbo.m对创建的灰度图像滤波。
