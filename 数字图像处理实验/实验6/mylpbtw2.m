function final = mylpbtw2( N1,N2,D0,n )
%UNTITLED9 �˴���ʾ�йش˺�����ժҪ
n1=fix(N1/2);
n2=fix(N2/2);
for i=1:N1
  for j=1:N2
      d=sqrt((i-n1)^2+(j-n2)^2);
      final(i,j)=1/(1+(d/D0)^(2*n));
  end
end


