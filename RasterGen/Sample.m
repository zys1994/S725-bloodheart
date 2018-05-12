%Sample for RasterGen
[I11_,I12_,I13_,I14_]=RasterGen(1,512);
[I21_,I22_,I23_,I24_]=RasterGen(4,512);
[I31_,I32_,I33_,I34_]=RasterGen(16,512);
[I41_,I42_,I43_,I44_]=RasterGen(64,512);
[I51_,I52_,I53_,I54_]=RasterGen(128,512);

%%%%Show-Sample%%%%%
subplot(2,2,1); imshow(I11_); subplot(2,2,2); imshow(I12_); subplot(2,2,3); imshow(I13_); subplot(2,2,4); imshow(I14_);
figure;
subplot(2,2,1); imshow(I21_); subplot(2,2,2); imshow(I22_); subplot(2,2,3); imshow(I23_); subplot(2,2,4); imshow(I24_);
figure;
subplot(2,2,1); imshow(I31_); subplot(2,2,2); imshow(I32_); subplot(2,2,3); imshow(I33_); subplot(2,2,4); imshow(I34_);
figure;
subplot(2,2,1); imshow(I41_); subplot(2,2,2); imshow(I42_); subplot(2,2,3); imshow(I43_); subplot(2,2,4); imshow(I44_);
figure;
subplot(2,2,1); imshow(I51_); subplot(2,2,2); imshow(I52_); subplot(2,2,3); imshow(I53_); subplot(2,2,4); imshow(I54_);


%%%%%Save-Sample%%%%%%
%{
path1='Saver\1_1.jpg';  path2='Saver\1_2.jpg'; 
path3='Saver\1_3.jpg';  path4='Saver\1_4.jpg'; 
imwrite(I11_,path1);
imwrite(I12_,path2);
imwrite(I13_,path3);
imwrite(I14_,path4);
%}