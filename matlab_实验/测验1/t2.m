ts=0:7;
for t=ts
    y=20*t^(2/3)/(t+1)-(t+1)^2/(exp(0.3*t+5))+2/t;
    fprintf('%.2f\n',y)
end
