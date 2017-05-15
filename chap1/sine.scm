(define (cube x) (* x x x))

(define (p x) (- (* 3.0 x) (* 4.0 (cube x))))

; use gradient
(define (sine deg)
	(if (< (abs deg) 0.0000001)
		deg
		(p (sine (/ deg 3.0)))))
