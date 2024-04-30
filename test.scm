(use-modules (ice-9 format))

(define a (cons 1 (cons 2 3)))
(format #t "a: ~a\n" a)
(format #t "a is pair? ~a\n" (pair? a))
(format #t "a is list? ~a\n\n" (list? a))

(define b (cons 1 (cons 2 (cons 3 '()))))
(format #t "b: ~a\n" b)
(format #t "b is pair? ~a\n" (pair? b))
(format #t "b is list? ~a\n\n" (list? b))

(define c (list 1 2 3))
(format #t "c: ~a\n" c)
(format #t "c is pair? ~a\n" (pair? c))
(format #t "c is list? ~a\n\n" (list? c))

(define d '(1 2 3))
(format #t "d: ~a\n" d)
(format #t "d is pair? ~a\n" (pair? d))
(format #t "d is list? ~a\n\n" (list? d))

(define e '(1 2 . 3))
(format #t "e: ~a\n" e)
(format #t "e is pair? ~a\n" (pair? e))
(format #t "e is list? ~a\n" (list? e))
