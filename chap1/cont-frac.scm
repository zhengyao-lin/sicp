;; prac 1.37

(define (cont-frac n d k)
	(define (f n d k c)
		(if (= c k)
			(/ (n c) (d c))
			(/ (n c) (+ (d c) (f n d k (+ c 1))))
		)
	)
	(f n d k 1)
)
