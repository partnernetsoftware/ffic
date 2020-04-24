```
# cons
cons()

# quote
^()

# lambda
@(y,@L((x),@*(x,x))),y(3) #9

# let

# tail optimization

# map
{x:1}

# vector
[1,2]



```
```
1.cons:把元素加到链表里；(cons 1 '(2 3 4 5))，有两个参数

2,quote:引用用来阻止记号被求值,它是用来用符号或者表原封不动的传递给程序，而不是求值之后传递，由于用的次数很多，被记为 ’ ，例如，(+ 2 3)会被求值为5，然而(quote (+ 2 3))则向程序返回(+ 2 3)本身。’(+ 2 3)代表列表(+ 2 3)本身；

3.append:把两个或多个链表组成一个链表；(append '( 1 2) '(3 4))  return (1 2 3 4)

4 list:把两个或多个链表连成一个链表；(list '(1 2) '(3 4)) return ((1 2) (3 4))

5lambda：用于定义过程。lambda需要至少一个的参数，第一个参数是由定义的过程所需的参数组成的表。因为本例fhello没有参数，所以参数表是空表.lambda的语句体都是隐式的begin代码结构

6 let:用于定义局部变量，格式 (let binds body),变量的作用域scope为body体,[binds] → ((p1 v1) (p2 v2) ...)

7.scheme中将循环转换为尾递归，所以可以不用循环了

8，map:映射是将同样的行为应用于表所有元素的过程。R5RS定义了两个映射过程：其一为返回转化后的表的map过程，另一为注重副作用的for-each过程:(mapprocedure list1 list2 ...)

9,apply:是将一个过程应用于一个表（译注：将表展开，作为过程的参数）。此函数具有任意多个参数，但首参数和末参数分别应该是一个过程和一个表

10.cond：类似于C语言的的case操作，(cond ((测试) 操作) … (else 操作))

11 and:and后可以有多个参数，只有它后面的参数的表达式的值都为#t时，它的返回值才为#t,如果表达式的值都不是boolean型的话，返回最后一个表达式的值> (and #t 5) 5


    词法定界（Lexical Scoping）
    动态类型（Dynamic Typing）
    良好的可扩展性
    尾递归（Tail Recursive）
    函数可以作为值返回
    支持一流的计算连续
    传值调用（passing-by-value）
    算术运算相对独立
```
