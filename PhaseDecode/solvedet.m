function [ detphase12,detphase23 ] = solvedet( phase1,phase2 ) %1-five1 
%det12,det23都是多频下的包裹，用于求真实相位
[rows,cols]=size(phase1);
detphase12=zeros(rows,cols);
detphase23=zeros(rows,cols);
%解det12包裹相位
for i=1:rows
    for j=1:cols
       if(phase1(i,j)>phase2(i,j))
           detphase12(i,j)=phase1(i,j)-phase2(i,j);
       else
           detphase12(i,j)=phase1(i,j)-phase2(i,j)+2*pi;
       end
    end
end
end

























% function [ detphase12,detphase23 ] = solvedet1_2( pphase1,pphase2,pphase3 )
% [rows,cols]=size(pphase1);
% pre_detphase12=zeros(rows,cols);
% detphase12=zeros(rows,cols);
% pre_detphase23=zeros(rows,cols);
% detphase23=zeros(rows,cols);
% for i=1:rows     %求解det
%     for j=1:cols
%          %求解det12
%         pre_detphase12(i,j)=pphase1(i,j)-pphase2(i,j);
%         temp_N1=floor( pre_detphase12(i,j)/(-2*pi) );
%         if( temp_N1>=1 )
%          detphase12(i,j)=pre_detphase12(i,j)+2*temp_N1*pi;
%         else
%          detphase12(i,j)=pre_detphase12(i,j);  
%         end
%          %求解det23
%         pre_detphase23(i,j)=pphase2(i,j)-pphase3(i,j);
%         temp_N2=floor( pre_detphase23(i,j)/(-2*pi) );
%         if( temp_N2>=1 )
%          detphase23(i,j)=pre_detphase23(i,j)+2*temp_N2*pi;
%         else
%          detphase23(i,j)=pre_detphase23(i,j);  
%         end
%          %求解det23
%         pre_detphase23(i,j)=pphase2(i,j)-pphase3(i,j);
%         temp_N3=floor( pre_detphase23(i,j)/(-2*pi) );
%         if( temp_N3>=1 )
%          detphase23(i,j)=pre_detphase23(i,j)+2*temp_N3*pi;
%         else
%          detphase23(i,j)=pre_detphase23(i,j);  
%         end
%         
%         
%     end  
% end
% end