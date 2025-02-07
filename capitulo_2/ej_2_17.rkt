#lang racket

; Exercise 2.17

; Define a procedure `last-pair` that returns the list that contains only the last element of a
; given (nonempty) list:

(define (last-pair l)
    (if (null? (cdr l))
        l
	(last-pair (cdr l))))

; Tests:
(last-pair (cons 23 (cons 72 (cons 149 (cons 34 null)))))  ; Should return '(34)
(last-pair (list 23 72 149 34))                            ; Should return '(34)