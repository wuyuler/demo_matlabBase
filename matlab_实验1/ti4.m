A=[12,34,-4;34,7,87;3,65,7];
B=[1,3,-1;2,0,3;3,-2,7];
%4.(1)
j1=A*B
j2=B*A
j3=A.*B
%4.(2)
j4=A^3
j5=A.^3
%4.(3)
j6=A/B
j7=B\A
%4.(4)
j8=[A,B]
j9=[A([1,3],:);B^2]

