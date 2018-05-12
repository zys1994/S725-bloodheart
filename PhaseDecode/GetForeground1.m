function [ I11,I12,I13,I14,I21,I22,I23,I24,I31,I32,I33,I34 ] = GetForeground1(flag) 
%flag=1 Ç°¾°£¬ flag=flase=0 ±³¾°
%70-
if(flag==1)
X11=imread(['matlab_beiduofen\beiduofen1\',num2str(9),'.BMP']);     I11=imresize(X11,0.5,'bilinear');
 
X12=imread(['matlab_beiduofen\beiduofen1\',num2str(10),'.BMP']);    I12=imresize(X12,0.5,'bilinear'); 
   
X13=imread(['matlab_beiduofen\beiduofen1\',num2str(11),'.BMP']);    I13=imresize(X13,0.5,'bilinear');   
X14=imread(['matlab_beiduofen\beiduofen1\',num2str(12),'.BMP']);    
I14=imresize(X14,0.5,'bilinear');    
%64-
X21=imread(['matlab_beiduofen\beiduofen1\',num2str(5),'.BMP']);   
I21=imresize(X21,0.5,'bilinear'); 
   
X22=imread(['matlab_beiduofen\beiduofen1\',num2str(6),'.BMP']);  %I22=rgb2gray(X22);    
I22=imresize(X22,0.5,'bilinear');   
X23=imread(['matlab_beiduofen\beiduofen1\',num2str(7),'.BMP']);  %I23=rgb2gray(X23);    
I23=imresize(X23,0.5,'bilinear'); 
X24=imread(['matlab_beiduofen\beiduofen1\',num2str(8),'.BMP']);  %I24=rgb2gray(X24);    
I24=imresize(X24,0.5,'bilinear');  
%59-
X31=imread(['matlab_beiduofen\beiduofen1\',num2str(1),'.BMP']);  %I31=rgb2gray(X31);   
I31=imresize(X31,0.5,'bilinear'); 
 
X32=imread(['matlab_beiduofen\beiduofen1\',num2str(2),'.BMP']);  %I32=rgb2gray(X32);   
I32=imresize(X32,0.5,'bilinear'); 
X33=imread(['matlab_beiduofen\beiduofen1\',num2str(3),'.BMP']);  %I33=rgb2gray(X33);   
I33=imresize(X33,0.5,'bilinear');  
X34=imread(['matlab_beiduofen\beiduofen1\',num2str(4),'.BMP']);  %I34=rgb2gray(X34);   
I34=imresize(X34,0.5,'bilinear');   
 
%    visivle 
figure;
subplot(2,2,1); imshow(I11);  subplot(2,2,2); imshow(I12);  subplot(2,2,3); imshow(I13);  subplot(2,2,4); imshow(I14); 
%figure;subplot(2,2,1); imshow(I21);    subplot(2,2,2); imshow(I22);   subplot(2,2,3); imshow(I23);   subplot(2,2,4); imshow(I24); 
%figure;subplot(2,2,1); imshow(I31);    subplot(2,2,2); imshow(I32);   subplot(2,2,3); imshow(I33);   subplot(2,2,4); imshow(I34);
% to double
I11=double(I11);    I12=double(I12);  I13=double(I13);   I14=double(I14);
I21=double(I21);    I22=double(I22);  I23=double(I23);   I24=double(I24);
I31=double(I31);    I32=double(I32);  I33=double(I33);   I34=double(I34);


elseif(flag==0)
 X11=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(9),'.BMP']);     I11=imresize(X11,0.5,'bilinear');
 
X12=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(10),'.BMP']);    I12=imresize(X12,0.5,'bilinear'); 
   
X13=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(11),'.BMP']);  %I13=rgb2gray(X13);   
I13=imresize(X13,0.5,'bilinear');   
X14=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(12),'.BMP']);  %I14=rgb2gray(X14);   
I14=imresize(X14,0.5,'bilinear');    
%64-
X21=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(5),'.BMP']);  %I21=rgb2gray(X21);   
I21=imresize(X21,0.5,'bilinear'); 
   
X22=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(6),'.BMP']); % I22=rgb2gray(X22);    
I22=imresize(X22,0.5,'bilinear');   
X23=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(7),'.BMP']);  %I23=rgb2gray(X23);    
I23=imresize(X23,0.5,'bilinear'); 
X24=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(8),'.BMP']);  %I24=rgb2gray(X24);    
I24=imresize(X24,0.5,'bilinear');  
%59-
X31=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(1),'.BMP']);  %I31=rgb2gray(X31);   
I31=imresize(X31,0.5,'bilinear'); 
 
X32=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(2),'.BMP']);  %I32=rgb2gray(X32);   
I32=imresize(X32,0.5,'bilinear'); 
X33=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(3),'.BMP']);  %I33=rgb2gray(X33);   
I33=imresize(X33,0.5,'bilinear');  
X34=imread(['matlab_beiduofen\beiduofen1\bg\',num2str(4),'.BMP']);  %I34=rgb2gray(X34);   
I34=imresize(X34,0.5,'bilinear');   

%X34=imread(['E:\study\matlab\matlab_singuangshan1\matlab_beiduofen\beiduofen1\bg\',num2str(4),'.BMP']);  %I34=rgb2gray(X34);   
%I34=imresize(X34,0.5,'bilinear'); 
%    visivle 
figure;
subplot(2,2,1); imshow(I11);  subplot(2,2,2); imshow(I12);  subplot(2,2,3); imshow(I13);  subplot(2,2,4); imshow(I14); 
%figure;subplot(2,2,1); imshow(I21);    subplot(2,2,2); imshow(I22);   subplot(2,2,3); imshow(I23);   subplot(2,2,4); imshow(I24); 
%figure;subplot(2,2,1); imshow(I31);    subplot(2,2,2); imshow(I32);   subplot(2,2,3); imshow(I33);   subplot(2,2,4); imshow(I34);
% to double
I11=double(I11);    I12=double(I12);  I13=double(I13);   I14=double(I14);
I21=double(I21);    I22=double(I22);  I23=double(I23);   I24=double(I24);
I31=double(I31);    I32=double(I32);  I33=double(I33);   I34=double(I34);
end   
end

