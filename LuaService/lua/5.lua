--
-- Created by IntelliJ IDEA.
-- User: liuxun
-- Date: 2016/1/29
-- Time: 14:10
-- To change this template use File | Settings | File Templates.
--
--Lua 函数
function max(num1,num2)
    if(num1>num1) then
        result=num1;
    else
        result=num2;
    end
    return result;
end
-- 调用函数
print("两值比较最大值为 ",max(10,4))


--Lua 中我们可以将函数作为参数传递给函数
myprint = function(param)
    print("这是打印函数 -   ##",param,"##")
end

function add(num1,num2,myprint)
    result = num1 + num2
    -- 调用传递的函数参数
    myprint(result)
end
myprint(10)
-- myprint 函数作为参数传递
add(2,5,myprint)


--多返回值
s, e = string.find("w3cschool菜鸟教程：www.w3cschool.cc", "菜鸟教程")
print("返回多个值："..s,e)

function maximum (a)
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i,val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi      --返回最大值 跟 值的索引
end

print(maximum({8,10,23,12,5}))

function min(a)
    local m=1;
    local s=a[m];
    for i,val in ipairs(a) do
        if(val<s) then
            m=i;
            s=val;
        end
    end
    return s,m;
end
print(min({66,3,45,6,7}));


--可变参数
function average(...)
    result =0;
    local arg={... }
    for i,val in ipairs(arg) do
        result = result+val;
    end
    print("总共传入 " .. #arg .. " 个数")
    return result/#arg
end
print("平均值为",average(10,5,3,4,5,6))
