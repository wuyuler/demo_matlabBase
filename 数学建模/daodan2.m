[t,y]=ode45('daodan2_fun',[0 2],[0 0]);
          Y=0:0.01:2;
          plot(1,Y,'-'),hold on          
          plot(y(:,1),y(:,2),'*')
