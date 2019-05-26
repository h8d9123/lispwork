(defun say-hello ()
  (print "Hello World !"))

(defun max-num (a b)
  "return bigger number between a and b"
  (if (> a b) a b))

(defun min-num (a b)
  "return smaller number between a and b"
  (if (> a b) a b))

(defun list-max (lst)
  "return the max number in lst"
  (if (null (cdr lst))
      (car lst)
  (max-num (car lst) (list-max (cdr lst)))))

(defun list-min (lst)
  "return the min number in lst"
  (if (null (cdr lst))
      (car lst)
  (min-num (car lst) (list-max (cdr lst)))))
