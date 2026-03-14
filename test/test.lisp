(defpackage #:cl-base58.test
  (:use #:cl #:cl-base58)
  (:export #:run-tests))

(in-package #:cl-base58.test)

(defun run-tests ()
  (let ((encoded (encode #(0))))
    (assert (stringp encoded)))
  (let ((encoded (encode #(255))))
    (assert (stringp encoded)))
  t)
