--
-- Created by IntelliJ IDEA.
-- User: liuxun
-- Date: 2016/1/27
-- Time: 20:51
-- To change this template use File | Settings | File Templates.
--

--循环

a=10
while( a < 20 )
do
    print("a 的值为:", a)
    a = a+1
end
--数值for循环
function f(x)
    print("function")
    return x*2
end
for i=1,f(5) do print(i)
end
--泛型for循环
days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
for i,v in ipairs(days) do
    print(i,v)
end

--Lua repeat...until 循环
--[ 变量定义 --]
a = 10
--[ 执行循环 --]
repeat
    print("a的值为:", a)
    a = a + 1
until( a > 15 )

--Lua 循环嵌套
j =2
for i=2,10 do
    for j=2,(i/j) , 2 do
        if(not(i%j))
        then
            break
        end
        if(j > (i/j))then
            print("i 的值为：",i)
        end
    end
end

--Lua break 语句
--[ 定义变量 --]
a = 10
--Lua break 语句
--[ while 循环 --]
while( a < 20 )
do
    print("a 的值为:", a)
    a=a+1
    if( a > 15) then
        --[ 使用 break 语句终止循环 --]
        break
    end
end