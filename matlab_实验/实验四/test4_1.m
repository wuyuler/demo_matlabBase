clc
clear
format compact;
data=fix(30+(98-30+1)*rand(20,5));
[maxscore,max_index]=max(data);
fprintf('每门课最高分及相应学生序号:%d %d\n',[maxscore;max_index])
[minscore,min_index]=min(data);
fprintf('每门课最低分及相应学生序号:%d %d\n',[minscore;min_index])
%每门课平均分
avgscore=mean(data);
fprintf('每门课平均分:%.2f\n',avgscore')
%标准差
stdscore=std(data);
fprintf('每门课标准差:%.2f\n',stdscore')
data2=sum(data,2);
[maxscore,max_index]=max(data2);
fprintf('总分最高分及相应学生序号:%d  %d\n',[maxscore;max_index])
[minscore,min_index]=min(data2);
fprintf('总分最低分及相应学生序号:%d %d\n',[minscore;min_index])

%将5门课总分按从大到小的顺序存入score中，相应学生序号存入num
[score,num]=sort(data2,1,'descend');

%输出5门课程平均分大于等于60分的学生人数所占的比例
avgscore=mean(data,2);
count=0;
for i=avgscore'
    if i >= 60
        count=count+1;
    end
end
    
propor=count./20;
fprintf('5门课程平均分大于等于60分的学生人数所占的比例:%f\n',propor')
