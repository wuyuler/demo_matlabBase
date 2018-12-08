function f = t2_fun1(x)
    %注意,与ezplot不同,这里x要当矩阵看待
    f=x.^3-2.*x.^2.*sin(x)+5.*x.*cos(x)+1./x;
end

