; prac 2.18 reverse a list

(define (reverse lst)
	(define (iter remain ret)
		(if (null? remain)
			ret
			(iter (cdr remain) (cons (car remain) ret))
		)
	)

	(iter lst ())
)

; notes
;
; for list (1 2 3 4)
; 
; fold-right goes from 4 to 1
; fold-left goes from 1 to 4

; prac 2.39

; implement reverse using fold-right
(define (fr-reverse lst)
	(fold-right (lambda (x y) (append y (list x))) () lst)
)

; implement reverse using fold-left
(define (fl-reverse lst)
	(fold-left (lambda (x y) (cons y x)) () lst)
)
