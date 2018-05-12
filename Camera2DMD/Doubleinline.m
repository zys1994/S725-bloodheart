function [ fP,ffP,posx,posy] = Doubleinline( f_h,f_v,x,y )
x2=ceil(x); %max
x1=floor(x);
y2=ceil(y);
y1=floor(y);
%双线性插值法求亚像素
%handle broader
if(x1==x2)
    fR1=y1;  ffR1=y1;
    fR2=y2;   ffR2=y1;    
else
fR1=(x2-x)/(x2-x1)*f_h(x1,y1)+(x-x1)/(x2-x1)*f_h(x2,y1);
fR2=(x2-x)/(x2-x1)*f_h(x1,y2)+(x-x1)/(x2-x1)*f_h(x2,y2);

ffR1=(x2-x)/(x2-x1)*f_v(x1,y1)+(x-x1)/(x2-x1)*f_v(x2,y1);
ffR2=(x2-x)/(x2-x1)*f_v(x1,y2)+(x-x1)/(x2-x1)*f_v(x2,y2);
end

if(y1==y2)
    fP=fR1;
    ffP=fR2;
else
fP=(y2-y)/(y2-y1)*fR1+(y-y1)/(y2-y1)*fR2;
ffP=(y2-y)/(y2-y1)*ffR1+(y-y1)/(y2-y1)*ffR2;
end

posx=fP/(2*pi)*10;
posy=ffP/(2*pi)*10;
end

