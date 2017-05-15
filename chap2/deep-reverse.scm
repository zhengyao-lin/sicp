; prac 2.27 reverse both the current list and the sub-lists

(load "reverse")

(define (deep-reverse lst)
	(if (list? lst)
		(map deep-reverse (reverse lst))
		lst
	)
)
