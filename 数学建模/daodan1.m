%ȡx0=0��xf=0��9999������������ff6��m���£� 
   x0=0;xf=0.9999;
  [x,y]=ode15s('daodan1_fun',[x0 xf],[0 0]);
   plot(x,y(:,1),'b.') 
   hold on
   y=0:0.01:2;
   plot(1,y,'b*')
