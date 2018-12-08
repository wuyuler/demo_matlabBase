ezplot('x^3-2*x^2*sin(x)+5*x*cos(x)+1/x',[0.5,4]),grid%结果在2.5附近
res1=fzero(@t2_fun1,1.5)%2.6095

syms x
%solve默认就是0
fv=solve(x^3-2*x^2*sin(x)+5*x*cos(x)+1/x,x)%2.6095

