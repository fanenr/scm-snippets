(use-modules
  (ice-9 rdelim)
  (ice-9 format)
  (ice-9 binary-ports)
  (ice-9 textual-ports))

(define stdin (current-input-port))
(define stdout (current-output-port))

(define (file-copy from to)
  (define result #f)
  (define-values (fp tp bt) (values 0 0 0))
  (when (and (file-exists? from)
             (not (file-exists? to)))
    (set! fp (open-file from "rb"))
    (set! tp (open-file to   "wb"))
    (while #t
      (set! bt (get-u8 fp))
      (when (eof-object? bt)
        (break))
      (put-u8 tp bt))
    (set! result #t))
  result)

(define (main args)
  (define from (list-ref args 1))
  (define to   (list-ref args 2))
  (format #t "from: ~a, to: ~a\n" from to)
  (format #t "copy ")
  (if (file-copy from to)
    (format #t "successfully")
    (format #t "failed"))
  (newline))
