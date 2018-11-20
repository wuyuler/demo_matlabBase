function dy = ill(t,x)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
dy=zeros(2,1)
dy(1)=x(1)*x(2)-0.3*x(1);
dy(2)=-1*x(1)*x(2);
end

