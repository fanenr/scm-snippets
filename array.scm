(use-modules (ice-9 arrays) (ice-9 format))

; (make-typed-array type fill len ...)
; (make-typed-array type fill '(LOWER, UPPER) ...)
; (define arr (make-typed-array 'u32 *unspecified* 5 5))
(define arr (make-typed-array 'u32 0 5 5))

; (array-set! array obj idx1 idx2 ...)
(do ((i 0 (+ i 1)))
    ((>= i 5))
  (do ((j 0 (+ j 1)))
      ((>= j 5))
    (array-set! arr (+ i j) i j)))

; (array-for-each
;   (lambda (elem)
;     (format #t "~a " elem))
;   arr)

; (array-ref array idx1 idx2)
(do ((i 0 (+ i 1)))
    ((>= i 5))
  (do ((j 0 (+ j 1)) (elem 0))
      ((>= j 5))
    (set! elem (array-ref arr i j))
    (format #t "[~a:~a]: ~a " i j elem))
  (newline))

(format #t "~a\n" arr)
