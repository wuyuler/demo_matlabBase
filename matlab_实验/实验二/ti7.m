
%程序实分形
list=[0 0]';
resultX=zeros(1,50000);
resultY=zeros(1,50000);
i=1
while i<=50000
    r=rand()
    if r<0.85
        list=[0.83 0.03;-0.03 0.86]*list+[0 1.5]';
    elseif r<0.91
        list=[0.2 -0.25;0.21 0.23]*list+[0 1.5]';
    elseif r<0.99
        list=[-0.15,0.27;0.25,0.26]*list+[0 0.45]';
    else
        list=[0 0;0 0.17]*list+[0 0]';
    end
    resultX(i)=list(1);
    resultY(i)=list(2);
     i=i+1;
end
plot(resultX,resultY,'.')