function [ I11,I12,I13,I14,I21,I22,I23,I24,I31,I32,I33,I34  ] = GetCheckboard( flag )
if(flag==1)
I11=imread(['E:\study\matlab\matlab_checkboard\test1\9.bmp']);   
I12=imread(['E:\study\matlab\matlab_checkboard\test1\10.bmp']);     
I13=imread(['E:\study\matlab\matlab_checkboard\test1\11.bmp']); 
I14=imread(['E:\study\matlab\matlab_checkboard\test1\12.bmp']);     
I21=imread(['E:\study\matlab\matlab_checkboard\test1\5.bmp']);   
I22=imread(['E:\study\matlab\matlab_checkboard\test1\6.bmp']);    
I23=imread(['E:\study\matlab\matlab_checkboard\test1\7.bmp']);   
I24=imread(['E:\study\matlab\matlab_checkboard\test1\8.bmp']);   
I31=imread(['E:\study\matlab\matlab_checkboard\test1\1.bmp']);    
I32=imread(['E:\study\matlab\matlab_checkboard\test1\2.bmp']);     
I33=imread(['E:\study\matlab\matlab_checkboard\test1\3.bmp']);    
I34=imread(['E:\study\matlab\matlab_checkboard\test1\4.bmp']); 

elseif(flag==0)
I11=imread(['E:\study\matlab\matlab_checkboard\test1\t9.bmp']);   
I12=imread(['E:\study\matlab\matlab_checkboard\test1\t10.bmp']);     
I13=imread(['E:\study\matlab\matlab_checkboard\test1\t11.bmp']); 
I14=imread(['E:\study\matlab\matlab_checkboard\test1\t12.bmp']);     
I21=imread(['E:\study\matlab\matlab_checkboard\test1\t5.bmp']);   
I22=imread(['E:\study\matlab\matlab_checkboard\test1\t6.bmp']);    
I23=imread(['E:\study\matlab\matlab_checkboard\test1\t7.bmp']);   
I24=imread(['E:\study\matlab\matlab_checkboard\test1\t8.bmp']);   
I31=imread(['E:\study\matlab\matlab_checkboard\test1\t1.bmp']);    
I32=imread(['E:\study\matlab\matlab_checkboard\test1\t2.bmp']);     
I33=imread(['E:\study\matlab\matlab_checkboard\test1\t3.bmp']);    
I34=imread(['E:\study\matlab\matlab_checkboard\test1\t4.bmp']); 
end

subplot(2,2,1); imshow(I11);  subplot(2,2,2); imshow(I12);  subplot(2,2,3); imshow(I13);  subplot(2,2,4); imshow(I14); 
I11=double(I11);    I12=double(I12);  I13=double(I13);   I14=double(I14);
%figure;subplot(2,2,1); imshow(I21);  subplot(2,2,2); imshow(I22);  subplot(2,2,3); imshow(I23);  subplot(2,2,4); imshow(I24); 
I21=double(I21);    I22=double(I22);  I23=double(I23);   I24=double(I24);
%figure;subplot(2,2,1); imshow(I31);  subplot(2,2,2); imshow(I32);  subplot(2,2,3); imshow(I33);  subplot(2,2,4); imshow(I34); 
I31=double(I31);    I32=double(I32);  I33=double(I33);   I34=double(I34);
end

