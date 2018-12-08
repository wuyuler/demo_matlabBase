function dy= t7_fun1(x,y)
%y(1)=y y(2)=y'
dy=zeros(2,1);
dy(1)=y(2);
dy(2)=(5.*y(2)-y(1))./x;
end

