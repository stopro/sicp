(define (make-center-percent c p)
  (define width (/ (* c p) 100.0))
  (make-interval (- c width) (+ c width)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (* 100 (/ (- (upper-bound i) (lower-bound i)) (+ (upper-bound i) (lower-bound i)))))
