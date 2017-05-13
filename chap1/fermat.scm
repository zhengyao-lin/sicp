;; prac 1.2

(define (prime? n)
	(define (expmod b e m)
		(cond
			((= e 0) 1)
			((even? e)
				(remainder (square (expmod b (/ e 2) m)) m))
			(else (remainder (* b (expmod b (- e 1) m)) m))
		)
	)

	;; Fermat test
	(define (ftest n)
		(define rd (+ 1 (random (- n 1))))
		(= (expmod rd n n) rd)
	)

	;; Miller-Rabin test
	(define (mtest n)
		(define rd (+ 1 (random (- n 1))))
		(= (expmod rd (- n 1) n) 1)
	)

	(define (test-iter n times)
		(cond
			((= 0 times) #t)
			((not (mtest n)) #f)
			(else (test-iter n (- times 1)))
		)
	)

	(test-iter n 100)
)
