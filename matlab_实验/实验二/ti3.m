%3.	教材P362页 实验4 第1题
clc
clear
x=[-5.0 -3.0 1.0 2.0 2.5 3.0 5.0]
output=@(x,y)fprintf("当x=%.2f时,y=%.2f\n",x,y);%匿名函数
for i=x
    if i<0&i~=-3
        y=i^2+i-6;
        output(i,y)
    elseif i>=0&i<5&i~=2&i~=3
        y=i^2-5*i+6;
        output(i,y);
    else 
        y=i^2-i-1;
        output(i,y)
    end
end