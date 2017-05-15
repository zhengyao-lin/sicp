(load "reverse")

(define (same-parity first . rest)
	(define (iter first rest ret)
		(if (null? rest)
			ret
			(let ((cur (car rest)))
				(iter first (cdr rest)
					(if (= (remainder (- cur first) 2) 0)
						(cons cur ret)
						ret
					)
				)
			)
		)
	)

	(reverse (iter first rest (list first)))
)
