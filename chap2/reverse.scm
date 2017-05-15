(define (reverse lst)
	(define (iter remain ret)
		(if (null? remain)
			ret
			(iter (cdr remain) (cons (car remain) ret))
		)
	)

	(iter lst ())
)
