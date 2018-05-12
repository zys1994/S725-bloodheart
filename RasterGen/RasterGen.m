function  [I11_,I12_,I13_,I14_]=RasterGen(x,size) 
%���ҹ�դͼ������
%xָ����һ��ͼ�ж��ٸ����ڣ�sizeָͼƬ�ĳߴ磬��ôĬ�ϳ�������
for i=1:size;
    for j=1:size;
        I11(i,j)=127.5+127.5*cos((x*j/size)*2*pi);    %�����������
        I12(i,j)=127.5+127.5*cos(x*j/size*2*pi+pi/2);
        I13(i,j)=127.5+127.5*cos(x*j/size*2*pi+pi);
        I14(i,j)=127.5+127.5*cos(x*j/size*2*pi+3*pi/2);
    end
end
I11_=mat2gray(I11); I12_=mat2gray(I12); I13_=mat2gray(I13);  I14_=mat2gray(I14);

end

