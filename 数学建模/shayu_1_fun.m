function dx = shayu_1_fun(t,x)
%鲨鱼捕食模型1
%x(1)食饵的数量 x(2)捕食者的数量
dx=zeros(2,1)
dx(1)=x(1)*(1-0.1*x(2))
dx(2)=x(2)*(-0.5+0.02*x(1))

end

