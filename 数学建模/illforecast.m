ts=0:50;
x0=[0.02,0.98];
[t,x]=ode45('ill',ts,x0);[t,x]
plot(t,x(:,1),'r',t,x(:,2)),grid
legend('病人的比例','健康人的比例')

figure
plot(x(:,2),x(:,1))
