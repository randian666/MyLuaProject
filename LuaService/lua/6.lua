--
-- Created by IntelliJ IDEA.
-- User: liuxun
-- Date: 2016/1/29
-- Time: 14:37
-- To change this template use File | Settings | File Templates.
--

--Lua 运算符
-- +	加法	A + B 输出结果 30
-- -	减法	A - B 输出结果 -10
-- *	乘法	A * B 输出结果 200
-- /	除法	B / A w输出结果 2
-- %	取余	B % A 输出结果 0
-- ^	乘幂	A^2 输出结果 100
-- -	负号	-A 输出结果v -10
a = 21
b = 10
c = a + b
print("Line 1 - c 的值为 ", c )
c = a - b
print("Line 2 - c 的值为 ", c )
c = a * b
print("Line 3 - c 的值为 ", c )
c = a / b
print("Line 4 - c 的值为 ", c )
c = a % b
print("Line 5 - c 的值为 ", c )
c = a^2
print("Line 6 - c 的值为 ", c )
c = -a
print("Line 7 - c 的值为 ", c )


--关系运算符
-- ==	等于，检测两个值是否相等，相等返回 true，否则返回 false	(A == B) 为 false。
-- ~=	不等于，检测两个值是否相等，相等返回 false，否则返回 true<	(A ~= B) 为 true。
-- >	大于，如果左边的值大于右边的值，返回 true，否则返回 false	(A > B) 为 false。
-- <	小于，如果左边的值大于右边的值，返回 false，否则返回 true	(A < B) 为 true。
-- >=	大于等于，如果左边的值大于等于右边的值，返回 true，否则返回 false	(A >= B) 返回 false。
-- <=	小于等于， 如果左边的值小于等于右边的值，返回 true，否则返回 false	(A <= B) 返回 false。

a = 21
b = 10

if( a == b )
then
    print("Line 1 - a 等于 b" )
else
    print("Line 1 - a 不等于 b" )
end

if( a ~= b )
then
    print("Line 2 - a 不等于 b" )
else
    print("Line 2 - a 等于 b" )
end

if ( a < b )
then
    print("Line 3 - a 小于 b" )
else
    print("Line 3 - a 大于等于 b" )
end

if ( a > b )
then
    print("Line 4 - a 大于 b" )
else
    print("Line 5 - a 小于等于 b" )
end

-- 修改 a 和 b 的值
a = 5
b = 20
if ( a <= b )
then
    print("Line 5 - a 小于等于  b" )
end

if ( b >= a )
then
    print("Line 6 - b 大于等于 a" )
end


--逻辑运算符
-- and	逻辑与操作符。 如果两边的操作都为 true 则条件为 true。	(A and B) 为 false。
-- or	逻辑或操作符。 如果两边的操作任一一个为 true 则条件为 true。	(A or B) 为 true。
-- not	逻辑非操作符。与逻辑运算结果相反，如果条件为 true，逻辑非为 false。	not(A and B) 为 true。
a = true
b = true

if ( a and b )
then
    print("a and b - 条件为 true" )
end

if ( a or b )
then
    print("a or b - 条件为 true" )
end

print("---------分割线---------" )

-- 修改 a 和 b 的值
a = false
b = true

if ( a and b )
then
    print("a and b - 条件为 true" )
else
    print("a and b - 条件为 false" )
end

if ( not( a and b) )
then
    print("not( a and b) - 条件为 true" )
else
    print("not( a and b) - 条件为 false" )
end

--其他运算符
-- ..	连接两个字符串	a..b ，其中 a 为 "Hello " ， b 为 "World", 输出结果为 "Hello World"。
-- #	一元运算符，返回字符串或表的长度。	#"Hello" 返回 5

a = "Hello "
b = "World"

print("连接字符串 a 和 b ", a..b )

print("b 字符串长度 ",#b )

print("字符串 Test 长度 ",#"Test" )

--运算符优先级
--从高到低的顺序：
--^
--not    - (unary)
--*      /
--+      -
--..
--<      >      <=     >=     ~=     ==
--and
--or
a = 20
b = 10
c = 15
d = 5

e = (a + b) * c / d;-- ( 30 * 15 ) / 5
print("(a + b) * c / d 运算值为  :",e )

e = ((a + b) * c) / d; -- (30 * 15 ) / 5
print("((a + b) * c) / d 运算值为 :",e )

e = (a + b) * (c / d);-- (30) * (15/5)
print("(a + b) * (c / d) 运算值为 :",e )

e = a + (b * c) / d;  -- 20 + (150/5)
print("a + (b * c) / d 运算值为   :",e )