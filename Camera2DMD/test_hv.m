clc;
clear;
%效果并不好  仅供参考
[I11,I12,I13,I14,I21,I22,I23,I24,I31,I32,I33,I34] = GetCheckboard(1);
[II11,II12,II13,II14,II21,II22,II23,II24,II31,II32,II33,II34] = GetCheckboard(0);
det2_h=Getdet2_h(I11,I12,I13,I14,I21,I22,I23,I24,I31,I32,I33,I34);
det2_v=Getdet2_v(II11,II12,II13,II14,II21,II22,II23,II24,II31,II32,II33,II34);
% figure;
% surf(det2_h(2:end-1,2:end-1));
% figure;
% surf(det2_v(2:end-1,2:end-1));

harris=importdata('test1\Harris.txt'); %导入角点文件
[N,m]=size(harris); %N是角点个数 m为2维度
pos=zeros(48,4);  %定义第一维是行

for i=1:N
    [pos(i,1),pos(i,2),pos(i,3),pos(i,4)]=Doubleinline( det2_h,det2_v,harris(i,2),harris(i,1));
end

[h,w]=size(det2_h);
bg=zeros(h,w);
for i=1:N
    bg(round(pos(i,4)),round(pos(i,3)))=1;
end
figure();
imshow(bg),title('投影仪对应DMD角点图');