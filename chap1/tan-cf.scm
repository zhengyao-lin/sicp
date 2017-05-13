(load "cont-frac")

(define (tan-cf x k)
	(cont-frac
		(lambda (i) (if (= i 1) x (- (expt x 2))))
		(lambda (i) (- (* 2 i) 1))
		k
	)
)
