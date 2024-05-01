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
(format #t "e is list? ~a\n\n" (list? e))

; (quote exp ...)
(define ls1 '(1 2 3))
(format #t "ls1: ~a\n" ls1)

(define ls2 '(1 2 (+ 1 2)))
(format #t "ls2: ~a\n" ls2)

; (quasiquote exp ...)
; (quasiquote (unquote exp) ...)
; (quasiquote (unqutoe-splicing ls) ...)
(define ls3 `(,@ls1))
(format #t "ls3: ~a\n" ls3)

(define ls4 `(1 2 (+ 1 2)))
(format #t "ls4: ~a\n" ls4)

(define ls5 `(1 2 ,(+ 1 2)))
(format #t "ls5: ~a\n" ls5)

#! this is block comments !#
#| this is #| nested |# block comments |#
