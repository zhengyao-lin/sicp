; prac 2.32 generate a set of all possible subsets

; similar to the coin change problem: taking an element or not gives two different sets of subsets

(define (subsets lst)
	(if (null? lst)
		(list ())
		(let
			((rest (subsets (cdr lst))))
			(append rest (map (lambda (elem) (cons (car lst) elem)) rest))
		)
	)
)
