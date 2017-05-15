; prac 2.20 in a list, output the numbers with the same parity as the first element

(define (same-parity first . rest)
	(define (iter first rest)
		(if (null? rest)
			()
			(let ((cur (car rest)))
				(if (= (remainder (- cur first) 2) 0)
					(cons cur (iter first (cdr rest)))
					(iter first (cdr rest))
				)
			)
		)
	)

	(cons first (iter first rest))
)
