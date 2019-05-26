(defun say-hello ()
  (print "Hello World !"))

(defun num-max (a b)
  "return bigger number between a and b"
  (if (> a b) a b))

(defun num-min (a b)
  "return smaller number between a and b"
  (if (> a b) a b))

(defmacro ifnot (expr &rest body)
  `(if (not ,expr) ,@body))

(defmacro whennot (expr &rest body)
  `(when (not ,expr) (progn ,@body)))

(defun list-max (lst)
  "return the max number in lst"
  (if (null (cdr lst))
      (car lst)
  (num-max (car lst) (list-max (cdr lst)))))

(defun list-min (lst)
  "return the min number in lst"
  (if (null (cdr lst))
      (car lst)
  (num-min (car lst) (list-max (cdr lst)))))
