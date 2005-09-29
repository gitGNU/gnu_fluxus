(define col 1)
(define sc 1)
(define rot 45)

(define (draw n)
	(opacity 0.5)
	(translate (vector 1 0 0))
	(push)
	(colour (vector (* col (gh (+ n 1))) 
					(* col (gh n) )
					(* col (gh (- n 1)))))
	(scale (vector (* sc (gh (+ n 1))) 
					(* 4 (gh n) )
					(* sc (gh (- n 5)))))
	(rotate (vector (* rot (gh (+ n 1))) 
					(* rot (gh n) )
					(* rot (gh (- n 5)))))
	(draw-cube)
	(pop)
	(if (eq? n 0)
		1
		(draw (- n 1))))

(define (render)
	(push)
	(draw 30)
	(pop)
	(push)
	(translate (vector 0 2 0))
	(draw 30)
	(pop)
	(push)
	(translate (vector 0 4 0))
	(draw 30)
	(pop)
	(push)
	(translate (vector 0 6 0))
	(draw 30)
	(pop)
	(push)
	(translate (vector 0 8 0))
	(draw 30)
	(pop))

(clear)
(clear-colour (vector 0 0 0))
(every-frame "(render)")
