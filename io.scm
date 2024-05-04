(use-modules
  (ice-9 rdelim)
  (ice-9 binary-ports)
  (ice-9 textual-ports))

(define stdin (current-input-port))
(define stdout (current-output-port))

(define (main . args)
  (define file "a.txt")
  (unless (file-exists? file)
    (close-port (open-file file "w")))

  (define port (open-file "a.txt" "w"))

  (let loop ()
    (define ch (read-char))
    (unless (eof-object? ch)
      (put-char port ch)
      (loop)))

  (close-port port))
