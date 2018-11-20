function dx = shayu_2_fun_duringwar(t,x)
%战争中的模型
%   此处显示详细说明
dx=zeros(2,1);
dx(1)=x(1)*(0.9-0.1*x(2));
dx(2)=x(2)*(-0.6+0.02*x(1));

end

