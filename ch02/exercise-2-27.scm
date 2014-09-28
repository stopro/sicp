(define (deep-reverse alist)
  (if (null? alist)
      (list)
      (append (deep-reverse (cdr alist)) (deep-reverse (car alist)))))

(deep-reverse (list (list 1 2) (list 3 4)))
