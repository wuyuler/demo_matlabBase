clc
clear
data=[6,8,10,12,14,16,18;
    18.0,20.0,22.0,25.0,30.0,28.0,24.0;
    15.0,19.0,24.0,28.0,34.0,32.0,30.0
    ];
target=6.5:2:17.5;

ans1=interp1(data(1,:),data(2,:),target,'spline');
ans2=interp1(data(1,:),data(3,:),target,'spline');
%plot(target,ans1)
%用线性插值法求得室外温度
target2=[9,11.5,14.5,17];

ans3=interp1(data(1,:),data(3,:),target,'linear');
ans4=interp1(data(1,:),data(3,:),target,'spline');