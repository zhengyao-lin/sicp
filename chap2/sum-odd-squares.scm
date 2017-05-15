; chap 2.2.3 a new version of sum-odd-squares

(load "fringe")

; sum of a list
(define (sum lst)
	(reduce (lambda (e acc) (+ e acc)) 0 lst)
)

(define (filter pred lst)
	(cond
		((null? lst) ())
		((pred (car lst)) (cons (car lst) (filter pred (cdr lst))))
		(else (filter pred (cdr lst)))
	)
)

(define (sum-odd-squares tree)
	(sum (map (lambda (x) (* x x)) (filter (lambda (x) (odd? x)) (fringe tree))))
)
