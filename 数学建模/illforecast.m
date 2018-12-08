ts=0:50;
x0=[0.19,0.81];
[t,x]=ode45('ill',[0 50],x0);[t,x]
plot(t,x(:,1),'r',t,x(:,2)),grid
legend('病人的比例','健康人的比例')
figure
r=1-x(:,1)-x(:,2)
plot(t,r)
% figure
% plot(x(:,2),x(:,1))
