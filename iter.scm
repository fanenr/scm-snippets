(use-modules (ice-9 format))

(let ((max 10))
  (define (loop i)
    (when (< i max)
      (format #t "~a " i)
      (loop (+ i 1))))
  (loop 0))

(newline)

(letrec ((loop (lambda (i)
                 (when (< i max)
                   (format #t "~a " i)
                   (loop (+ i 1)))))
         (max 10))
  (loop 0))

(newline)

; (do ((max 10 10) (i 0 (+ i 1)))
;     ((>= i max) 'nothing)
;   (format #t "~a " i))
; (newline)

(do ((max 10) (i 0 (+ i 1)))
    ((>= i max))
  (format #t "~a " i))

(newline)

(let ((max 10) (i 0))
  (while (< i max)
    (format #t "~a " i)
    (set! i (+ i 1))))

(newline)

(let ((max 10))
  (let loop ((i 0))
    (when (< i max)
      (format #t "~a " i)
      (loop (+ i 1)))))

(newline)
