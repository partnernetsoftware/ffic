;#过渡 版本
(define(fib n)(if(cmp n 2)1(if(cmp n 1)1(add(fib(sub n 1))(fib(sub n 2))))))
;("1111")
;(print "2222")
(print(fib 15))
;(print (fib 30))
(exit)

