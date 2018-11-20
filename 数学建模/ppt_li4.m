[T,Y]=ode15s('ppt_li4_fun',[0 3000],[2 0]); 
     plot(T,Y(:,1),'-')
