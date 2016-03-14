#!/usr/bin/env emacs --script
;; charset: utf-8; lexical-binding: t
;;
;; Gives a (usually) big random integer number, with no arguments.
;;                  If a positive integer n is given, the range is [0,n) .
;;
(random t)
(if (> (length command-line-args-left) 0)
    (princ (random (string-to-number (nth 0 command-line-args-left))))
  (princ (random))       )
(princ "\n")
