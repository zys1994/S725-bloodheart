load('zys.mat');
%imshow(mat2gray(depth)); %delta_phase123_last
%figure;
%surf(depth(2:end-1,2:end-1));

 ph1=imcrop(depth,[100,50,140,120]);
 imshow(mat2gray(ph1));
 figure;
 surf(ph1(2:end-1,2:end-1));

fid=fopen('zys.txt','w');
[rows,cols]=size(ph1);
for i=1:rows
    for j=1:cols
        %fprintf(fid,'%g\t%g\t%g\n',i,j,ph1(i,j));
        fprintf(fid,'%g ',i);
        fprintf(fid,'%g ',j);
        fprintf(fid,'%g\n',ph1(i,j)/14);
    end
end
fclose(fid);