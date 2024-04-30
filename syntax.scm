(use-modules
  (ice-9 format)
  (language tree-il))

(define-syntax my-when
  (syntax-rules ()
    ((_ pred exp exp* ...)
      (if pred (begin exp exp* ...)))))

(define-syntax my-let
  (syntax-rules ()
    ((_ ((var val) ...) exp exp* ...)
      (let ((var val) ...) exp exp* ...))))

(define quote-my-when
  '(my-when (= 1 (- 2 1))
    (format #t "my when\n")
    #t))

(define quote-my-let
  '(my-let ((a 1) (b 2))
    (format #t "a: ~a\n" a)
    (format #t "b: ~a\n" b)
    #t))

(format #t "expansion result: ~s\neval result: ~a\n\n"
  (tree-il->scheme (macroexpand quote-my-when))
  (eval quote-my-when (interaction-environment)))

(format #t "expansion result: ~s\neval result: ~a\n"
  (tree-il->scheme (macroexpand quote-my-let))
  (eval quote-my-let (interaction-environment)))
