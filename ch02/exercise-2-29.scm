
(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; version 2 for make function
(define (make-mobile left right)
  (cons left right))

(define (make-branch length structure)
  (cons length structure))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-structure branch)
  (cdr branch))

; end of version 2

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (has-structure? branch)
  (pair? (branch-structure branch)))

(define (branch-weight branch)
  (if (has-structure? branch)
      (+ (branch-length branch) (total-weight (branch-structure branch)))
      (+ (branch-length branch) (branch-structure branch))))

(define (balanced mobile)
  (cond ((null? mobile) true)
	((not (pair? mobile)) true)
	((= (* (branch-length (left-branch mobile))
	      (branch-weight (left-branch mobile)))
	   (* (branch-length (right-branch mobile))
	      (branch-weight (right-branch mobile))))
	 (and (balanced (branch-structure (left-branch mobile)))
	      (balanced (branch-structure (right-branch mobile)))))
	(else
	 false)))

(define b1 (make-branch 1 1))

(define b2 (make-branch 2 2))

(define m1 (make-mobile b1 b2))

(right-branch m1)

(total-weight m1)

(branch-structure (right-branch m1))

(has-structure? (left-branch m3))

(balanced m1)

(define b3 (make-branch 3 3))
(define b4 (make-branch 4 4))

(define m2 (make-mobile b3 b4))

(define b5 (make-branch 5 m2))

(define b6 (make-branch 6 6))

(define m3 (make-mobile b5 b6))

(branch-structure b1)

(left-branch m3)

(right-branch m3)

(total-weight m3)

(balanced m3)

(cdr (cons (cons 1 2) (cons 3 4)))

(car (cdr (list 12 (list 13 14))))

(balanced m1)