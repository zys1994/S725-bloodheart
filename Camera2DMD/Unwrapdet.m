function [ detphase2 ] = Unwrapdet( det )
%p是节距 n是级数
p1=1/70;
p2=1/64;
p3=1/59;
p12=p1*p2/(p2-p1);
p23=p2*p3/(p3-p2);
[rows,cols]=size(det);
det1=zeros(rows,cols);
for i=1:rows
    for j=1:cols
       det1(i,j)=p23/(p23-p12)*det(i,j);
      % 2*pi*floor(p23*det(i,j))/(2*pi*(p23-p12)+phase1;
      detphase2(i,j)=p1*det1(i,j)/(p2-p1);
    end
end

end

