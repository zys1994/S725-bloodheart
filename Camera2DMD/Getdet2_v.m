function [ det2_v ] = Getdet2_v( I11,I12,I13,I14,I21,I22,I23,I24,I31,I32,I33,I34 )

phase1=getbaoguo(I11,I12,I13,I14);
%figure;
%imshow(mat2gray(phase1));
phase2=getbaoguo(I21,I22,I23,I24);
%figure;
%imshow(mat2gray(phase2));
phase3=getbaoguo(I31,I32,I33,I34);
detphase12 = solvedet(phase1,phase2);
detphase23 = solvedet(phase2,phase3);
detphase123=solvedet(detphase12,detphase23);
figure;
imshow(mat2gray(detphase123));
det2_v=Unwrapdet(detphase123);

end
