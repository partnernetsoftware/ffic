(define (fib n) (if (= n 2) 1 (if (= n 1) 1 (+ (fib (- n 1)) (fib (- n 2))))))
(print (fib 20))
;(print (fib 20));already become slow
;(print (fib 30));why slow?
(exit)
