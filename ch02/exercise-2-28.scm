(define (fringe alist)
  (cond ((null? alist) ())
	((not (pair? alist)) (list alist))
	(else (append (fringe (car alist))
		      (fringe (cdr alist))))))


(define xx (list (list 1 2) (list 3 4) (list 5 6)))

(fringe xx)

(fringe (list xx xx))

