syms t;
f=sym('sin(t)/t'); %������ź���f(t)=sin(t)/t
f1=subs(f,t,t+3); %��f ������λ
f2=subs(f1,t,2*t); %��f1 ���г߶ȱ任
f3=subs(f2,t,-t); %��f2 ���з���
subplot(2,2,1); ezplot(f,[-8,8]); grid on; % ezplot �Ƿ��ź�����ͼ����
subplot(2,2,2); ezplot(f1,[-8,8]); grid on;
subplot(2,2,3); ezplot(f2,[-8,8]); grid on;
subplot(2,2,4); ezplot(f3,[-8,8]); grid on;
