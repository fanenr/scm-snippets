(define-module (arthur print)
  #:export (print println print-list println-list))

(define (non-null-list? ls)
  (and (list? ls) (not (null? ls))))

(define (print-list args)
  (when (non-null-list? args)
    (let ((first (car args)) (rest (cdr args)))
      (display first)
      (for-each
        (lambda (arg)
          (display #\space)
          (display arg))
        rest))))

; (define print
;   (lambda args
;     (print-list args)))

(define (print . args)
  (print-list args))

(define (println-list args)
  (print-list args)
  (newline))

; (define println
;   (lambda args
;     (println-list args)))

(define (println . args)
  (println-list args))

(define (my-for-each proc ls)
  (when (non-null-list? ls)
    (let ((first (car ls)) (rest (cdr ls)))
      (proc first)
      (unless (null? rest)
        (my-for-each proc rest)))))

(define (my-print-list args)
  (when (non-null-list? args)
    (let ((first (car args)) (rest (cdr args)))
      (display first)
      (my-for-each
        (lambda (arg)
          (display #\space)
          (display arg))
        rest))))

; (define my-print
;   (lambda args
;     (my-print-list args)))

(define (my-print . args)
  (my-print-list args))

(define (my-println-list . args)
  (my-print-list args)
  (newline))

; (define my-println
;   (lambda args
;     (my-println-list args)))

(define (my-println . args)
  (my-println-list args))

; (println)
; (println 1)
; (println 1 2)
; (println 1 2 3)

; (my-println)
; (my-println 1)
; (my-println 1 2)
; (my-println 1 2 3)
