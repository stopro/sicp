(define (reverse alist)
  (if (null? alist)
      (list)
      (append (reverse (cdr alist)) (list (car alist)))))

(reverse (list 1 4 9 16 25))

