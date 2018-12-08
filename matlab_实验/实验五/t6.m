syms t;
f=sym('sin(t)/t'); %定义符号函数f(t)=sin(t)/t
f1=subs(f,t,t+3); %对f 进行移位
f2=subs(f1,t,2*t); %对f1 进行尺度变换
f3=subs(f2,t,-t); %对f2 进行反褶
subplot(2,2,1); ezplot(f,[-8,8]); grid on; % ezplot 是符号函数绘图命令
subplot(2,2,2); ezplot(f1,[-8,8]); grid on;
subplot(2,2,3); ezplot(f2,[-8,8]); grid on;
subplot(2,2,4); ezplot(f3,[-8,8]); grid on;
