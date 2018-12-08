f=@(x)(2-2*x).^2.*x*-1;
[x,val]=fminbnd(f,0,1)