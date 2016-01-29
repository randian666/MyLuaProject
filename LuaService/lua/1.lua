--
-- Created by IntelliJ IDEA.
-- User: liuxun
-- Date: 2016/1/27
-- Time: 19:46
--
--Lua中有8个基本类型分别为：nil、boolean、number、string、userdata、function、thread和table。
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string

--nil（空） nil 类型表示一种没有任何有效值 对于全局变量和 table，nil 还有一个"删除"作用
print(type(a))

tab1 = { key1 = "val1", key2 = "val2", "val3","val4" }
print(type(tab1))              -- table
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

--boolean（布尔）
if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false!")
end

--number（数字）字
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

--string（字符串） 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字
string1 = "this is string1"

html = [[
<html>
<head></head>
<body>
    <a href="http://www.w3cschool.cc/">w3cschool菜鸟教程</a>
</body>
</html>
]]
print(html)
print("2" + 6)
print("2" + "6")
--使用 # 来计算字符串的长度
print("长度："..#html)


--table（表）
--在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。也可以在表里添加一些数据
-- 创建一个空的 table
local tbl1 = {}

-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}
--Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print("for 循环执行结果："..k .. " : " .. v)
end

--不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("key", key)
end
--table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

--function（函数）

function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

--function 可以以匿名函数（anonymous function）的方式通过参数传递
function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end
tab = { key1 = "val1", key2 = "val2" }
anonymous(tab, function(key, val)
    return key .. " = " .. val
end)
--thread（线程）
--在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。
--线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。
