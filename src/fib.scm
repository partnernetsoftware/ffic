(define (fib n) (if (= n 2) 1 (if (= n 1) 1 (+ (fib (- n 1)) (fib (- n 2))))))
("1111")
(print (fib 10))
;(print "1111")
;(print (fib 30))
(exit)
