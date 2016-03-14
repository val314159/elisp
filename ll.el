#!/usr/bin/env emacs --script
;; charset: utf-8; lexical-binding: t
;;
;; Gives a (usually) big random integer number, with no arguments.
;;                  If a positive integer n is given, the range is [0,n) .
;;
(push "." load-path)
(load "utils")
(require 'cl-lib)

(defconst THEN t)
;(defvar show-hidden nil)
(defvar show-hidden t)

(defun show (file)
  (princ (format "%s %4d %s\n" (nth 9 file) (nth 8 file) (nth 0 file))))

(cl-loop
 for file in (directory-files-and-attributes .)
 do
 (cond (show-hidden
	THEN
	(show file))

       ((string-prefix-p "." (car file))
	THEN
	nil)

       (THEN
	(show file))

       ))


       
