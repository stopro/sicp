(define (pow b p)
  (define (even? x)
    (= (remainder x 2) 0))
  (define (sqr x)
    (* x x))
  (define (iter res a n)
    (cond ((= n 0) res)
          ((even? n) (iter res (sqr a) (/ n 2)))
          (else (iter (* res a) a (- n 1)))))
  (iter 1 b p))

(define (cons x y)
  (* (pow 2 x) (pow 3 y)))

;; TODO, how to optimize it simpler?
(define (general-iter base cum z cnt)
  (if (= (remainder z cum) 0)
      (car-iter base (* cum base) z (+ cnt 1))
      cnt))

(define (car z)
  (general-iter 2 2 z 0))

(define (cdr z)
  (general-iter 3 3 z 0))
