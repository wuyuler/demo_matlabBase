function dx = shayu_2_fun_beforewar(t,x)
%���㲶ʳģ��2
%   �����˹�����
dx=zeros(2,1);
dx(1)=x(1)*(0.7-0.1*x(2));
dx(2)=x(2)*(-0.8+0.02*x(1));
end

