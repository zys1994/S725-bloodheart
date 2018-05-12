[ I11,I12,I13,I14,I21,I22,I23,I24,I31,I32,I33,I34 ] = GetForeground1(1);
[ I11_,I12_,I13_,I14_,I21_,I22_,I23_,I24_,I31_,I32_,I33_,I34_ ] = GetForeground1(0);  %带_表背景
%导图完初始化
[rows,cols]=size(I11);
phase1=zeros(rows,cols);   phase1_=zeros(rows,cols); %包裹相位
phase2=zeros(rows,cols);   phase2_=zeros(rows,cols);
phase3=zeros(rows,cols);   phase3_=zeros(rows,cols);
detphase12=zeros(rows,cols);   detphase12_=zeros(rows,cols);
detphase23=zeros(rows,cols);   detphase23_=zeros(rows,cols);
detphase123=zeros(rows,cols);  detphase123_=zeros(rows,cols);
%%
%%解相程序正式开始
%解出包裹相位
phase1=getbaoguo(I11,I12,I13,I14);
phase2=getbaoguo(I21,I22,I23,I24);
phase3=getbaoguo(I31,I32,I33,I34);
phase1_=getbaoguo(I11_,I12_,I13_,I14_);
phase2_=getbaoguo(I21_,I22_,I23_,I24_);
phase3_=getbaoguo(I31_,I32_,I33_,I34_);
%解det12,det23
detphase12 = solvedet(phase1,phase2);
detphase23 = solvedet(phase2,phase3);
detphase123=solvedet(detphase12,detphase23);
detphase12_ = solvedet(phase1_,phase2_);
detphase23_ = solvedet(phase2_,phase3_);
detphase123_=solvedet(detphase12_,detphase23_);
det=detphase123-detphase123_;
det(find(det>=0))=0;
det(find(det<-2))=0;
%可视化
figure;
subplot(2,2,1);imshow(phase1);
subplot(2,2,2);imshow(phase2);
subplot(2,2,3);imshow(phase3);
figure;
imshow(mat2gray(detphase12));
figure;
imshow(mat2gray(detphase23));
figure;
imshow(mat2gray(detphase123));
figure;
imshow(mat2gray(detphase123_));
figure;
surf(detphase123(2:end-1,2:end-1));
figure;
surf(det(2:end-1,2:end-1));











%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%解主值相位
%pphase1=solvebaoguo(phase1);
%pphase2=solvebaoguo(phase2);
%pphase3=solvebaoguo(phase3);
%解det
% detphase123=solvedet123( detphase12,detphase23 );
% %detphase123=avoid_invid(detphase123);
% figure;
% subplot(2,2,1);imshow(phase1);
% subplot(2,2,2);imshow(phase2);
% subplot(2,2,3);imshow(phase3);
% figure;
% subplot(2,2,1);imshow(mat2gray(pphase1));
% subplot(2,2,2);imshow(mat2gray(pphase2));
% subplot(2,2,3);imshow(mat2gray(pphase3));
% figure;
% 
% subplot(2,2,1);imshow(mat2gray(detphase12));
% subplot(2,2,2);imshow(mat2gray(detphase23));
% figure;
% imshow(mat2gray(detphase123));