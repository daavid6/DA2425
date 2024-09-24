#lang racket

;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
(define (sum-of-squares-of-two-largest a b c)
  (define (square x) (* x x))
  (cond ((and (>= a b) (>= b c)) (+ (square a) (square b)))
        ((and (>= a c) (>= c b)) (+ (square a) (square c)))
        (else (+ (square b) (square c)))))

;Example
;(sum-of-squares-of-two-largest 1 2 3)