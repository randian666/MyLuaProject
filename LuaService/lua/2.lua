--
-- Created by IntelliJ IDEA.
-- User: liuxun
-- Date: 2016/1/27
-- Time: 20:36
-- To change this template use File | Settings | File Templates.
--

--Lua 变量

a = 5               -- 全局变量
local b = 5     -- 局部变量

function joke()
    c = 5           -- 局部变量
    local d = 6 -- 局部变量
end

print(c,d)      --> nil nil

do
    local a = 6 -- 局部变量
    b = 6           -- 全局变量
    print(a,b); --> 6 6
end

print(a,b)      --> 5 6


--赋值语句
a = "hello" .. "world"

--Lua可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。
a, b = 10, 2*1       -->       a=10; b=2*x
print(a,b)

--遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作，所以我们可以这样进行交换变量的值
x,y=1,2
x, y = y, x                     -- swap 'x' for 'y'

a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil

a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2

a, b, c = 0
print(a,b,c)             --> 0   nil   nil

--索引
site = {}
site["key"] = "www.w3cschool.cc"
site["key1"] = "www.w3cschool.cc1"
print(site["key"])
print(site.key)
print(site.key1)