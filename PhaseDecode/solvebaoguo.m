function [ abs_phase ] = solvebaoguo(bg_phase)  %bg����
 [M,N]=size(bg_phase);
 abs_phase=zeros(M,N);
n=zeros(M,N);   %���
n(1,1)=0;
for i=2:M
    if abs(bg_phase(i,1)-bg_phase(i-1,1))<pi   %if abs(bg_phase(i,1)-bg_phase(i-1,1))<pi
        n(i,1)=n(i-1,1);     %n1(i,1)=n1(i-1,1);
    elseif bg_phase(i,1)-bg_phase(i-1,1)<=-pi  %elseif bg_phase(i,1)-bg_phase(i-1,1)<=-pi
        n(i,1)=n(i-1,1)+1;   
    elseif bg_phase(i,1)-bg_phase(i-1,1)>=pi
        n(i,1)=n(i-1,1)-1;
    end
end

for i=1:M
    for j=2:N
        if abs(bg_phase(i,j)-bg_phase(i,j-1))<pi
            n(i,j)=n(i,j-1);
        elseif bg_phase(i,j)-bg_phase(i,j-1)<=-pi
            n(i,j)=n(i,j-1)+1;
        elseif bg_phase(i,j)-bg_phase(i,j-1)>=pi
            n(i,j)=n(i,j-1)-1;
        end
    end
end 
abs_phase=bg_phase+2*pi.*n;


end

% [rows,cols]=size(bg_phase);
% %abs_phase=zeros(rows,cols);
% n1=zeros(rows,cols);   %���
% n1(1,1)=0;
% 
% for i=2:rows  %1lie�������    ��-��
%     if abs(bg_phase(i,1)-bg_phase(i-1,1))<pi
%         n1(i,1)=n1(i-1,1);
%     elseif bg_phase(i,1)-bg_phase(i-1,1)<=-pi
%         n1(i,1)=n1(i-1,1)+1;
%     elseif bg_phase(i,1)-bg_phase(i-1,1)>=pi
%         n1(i,1)=n1(i-1,1)-1;
%     end
% end
% 
% for i=1:rows  %���ƽ�ʽ �����е���λ�ݶ���� -------
%     for j=2:cols
%         if abs(bg_phase(i,j)-bg_phase(i,j-1))<pi
%             n1(i,j)=n1(i,j-1);
%         elseif bg_phase(i,j-1)-bg_phase(i,j-1)<=-pi
%             n1(i,j)=n1(i,j-1)+1;
%         elseif bg_phase(i,j)-bg_phase(i,j-1)>=pi
%             n1(i,j)=n1(i,j-1)-1;
%         end
%     end
% end    
% 
% abs_phase=bg_phase+2*pi.*n1;