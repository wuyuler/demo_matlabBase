%获取模板中特定元素
function f=getElement(model,methond)
switch methond
    case 'med'
        f=median(median(model));
    case'min'
        f=min(min(model));
    case'max'
        f=max(max(model));
    otherwise
        print('无此方法');
end