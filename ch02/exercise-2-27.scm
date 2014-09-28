(define (deep-reverse alist)
  (cond ((null? alist) ())
	((not (pair? alist)) alist)
	(else (append (deep-reverse (cdr alist))
		      (list (deep-reverse (car alist)))))))

(deep-reverse (list (list 1 2) (list 3 4)))
(deep-reverse (list (list 3 4) (list 1 2)))
(deep-reverse (list 1 2 3 4))
(pp deep-reverse)

(pair? (list))