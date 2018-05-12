function [ phase ] = getbaoguo( I1,I2,I3,I4 )

[rows,cols]=size(I1);
phase=zeros(rows,cols);
for i=1:rows
    for j=1:cols
      % phase(i,j)=atan2((I2(i,j)-I4(i,j)),(I1(i,j)-I3(i,j)));  first
      phase(i,j)=atan2((I4(i,j)-I2(i,j)),(I1(i,j)-I3(i,j)));
    end
end
end

