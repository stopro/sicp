
(define (make-point x y)
  (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (average a b)
  (/ (+ a b) 2.0))

(define (make-ractangle point1 point2)
  (cons point1 point2))

(define (ractangle-perimeter r)
  (define (length r)
    (abs (- (x-point (car r)) (x-point (cdr r)))))
  (define (height r)
    (abs (- (y-point (car r)) (y-point (cdr r)))))
  (* 2 (+ (height r) (length r))))

(define (ractangle-area r)
  (define (length r)
    (abs (- (x-point (car r)) (x-point (cdr r)))))
  (define (height r)
    (abs (- (y-point (car r)) (y-point (cdr r)))))
  (* (length r) (height r)))

(define oneP (make-point 0 0))
(define twoP (make-point 3 4))

(define one-ract (make-ractangle oneP twoP))

(display (ractangle-perimeter one-ract))
(display (ractangle-area one-ract))
