(define one-through-four (list 1 2 3 4))

(car one-through-four)

(cdr one-through-four)

(car (cdr one-through-four))

(cons 10 one-through-four)

(cons 5 one-through-four)

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define squares (list 1 4 9 16 25))

(define odds (list 1 3 5 7))
(list-ref squares 3)

(length squares)

(define nil ())

(define (scale-list items factor)
  (if (null? items)
      nil
      (cons (* (car items) factor)
	    (scale-list (cdr items) factor))))

(scale-list (list 1 2 3 4 5) 10)

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
	    (map proc (cdr items)))))

(map abs (list -10 2.5 -11.6 17))

(map (lambda (x) (* x x))
     (list 1 2 3 4 5))

(define (scale-list2 items factor)
  (map (lambda (x) (* x factor))
       items))

(scale-list2 (list 1 2 3 4 5 6) 10)
	       
      
(define (count-tree x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else
	 (+ (count-tree (car x))
	    (count-tree (cdr x))))))

