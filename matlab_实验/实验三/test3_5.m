%某专业有35位教师,其中教授5人，副教授8人、讲师20人，助教2人。
%请绘制职称比例结构饼图，并把图形的教师部分分开，并添加图例注释。（doc pie查询函数用法，并完成）
data=[5,8,20,2];
pie(data,[1,0,0,0])
legend('教授','副教授','讲师','助教')