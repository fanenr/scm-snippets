(use-modules (ice-9 format))

; (define als (list (cons 'arthur 20)))
(define als '((arthur . 20)))

; (acons key val als)
; (set! als (cons (cons 'tom 19) als))
(set! als (acons 'tom 19 als))

; (assq-set! als key val)
; (assv-set! als key val)
; (assoc-set! als key val)
(set! als (assq-set! als 'jack 21))

(format #t "als: ~a\n" als)

; (assq key als)
; (assv key als)
; (assoc key als)
(format #t "arthur: ~a\n" (assq 'arthur als))

; (assq-ref als key)
; (assv-ref als key)
; (assoc-ref als key)
(format #t "tom: (tom . ~a)\n" (assq-ref als 'tom))

; (assq-remove! als key)
; (assv-remove! als key)
; (assoc-remove! als key)
(set! als (assq-remove! als 'tom))

(format #t "als: ~a\n" als)

; (sloppy-assq key als)
; (sloppy-assv key als)
; (sloppy-assoc key als)
