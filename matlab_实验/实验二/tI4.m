%clc
%clear
%程序功能，输入月份显示季节
output=@(x,s)fprintf('%d月是%s\n',x,s);
s=input('输入1~12的月份数字:')  
switch(s)     %接下来需要根据输入，输出春夏秋冬四个季节和简单描述
    case {1,2,3}
        output(s,'春季')
    case {4,5,6}
        output(s,'夏季')
    case {7,8,9}
        output(s,'秋季')
    case {10,11,12}
        output(s,'冬季')
    otherwise
        disp('输入错误')
end
