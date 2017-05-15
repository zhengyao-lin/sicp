; prac 2.28 flaten a list

(define (fringe lst)
	(if (list? lst)
		(if (null? lst)
			lst
			(append (fringe (car lst)) (fringe (cdr lst)))
		)
		(list lst)
	)
)
