(use-modules (ice-9 format))

(define ht (make-hash-table 7))

; (hashq-set! ht key val) ; use eq?
; (hashv-set! ht key val) ; use eqv?
; (hash-set! ht key val)  ; use equal?
(hash-set! ht "arthur" 20)

; (hashq-create-handle! ht key val)
; (hashv-create-handle! ht key val)
; (hash-create-handle! ht key val)
(hash-create-handle! ht "jack" 21)
(hash-create-handle! ht "tom" 19)

; (hashq-ref ht key)
; (hashv-ref ht key)
; (hash-ref ht key)
(format #t "(\"arthur\" . ~a)\n" (hash-ref ht "arthur"))

; (hashq-get-handle ht key)
; (hashv-get-handle ht key)
; (hash-get-handle ht key)
(format #t "~s\n" (hash-get-handle ht "jack"))

; (hash-count pred ht)
(format #t "the number of elements in ht: ~a\n"
  (hash-count (const #t) ht))

(hash-remove! ht "arthur")

(newline)

; (define (print-table ht)
;   (hash-for-each
;     (lambda (key val)
;       (format #t "(~s . ~s)\n" key val))
;     ht))
(define (print-table ht)
  (hash-for-each-handle
    (lambda (pair)
      (format #t "~s\n" pair))
    ht))

(print-table ht)

; (hash-fold proc init ht)
