function dy=t8_fun1(x,y)
dy=zeros(2,1);
dy(1)=y(2);
dy(2)=(x.*log(x)-y(1)+x.*y(2))./(x.^2);