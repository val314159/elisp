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
(defvar show-hidden nil)
;(defvar show-hidden t)

(defun show (file)
  (princ file)
  (princ "\n"))

(cl-loop
 for file in (directory-files .)
 do
 (cond (show-hidden
	THEN
	(show file))

       ((string-prefix-p "." file)
	THEN
	nil)

       (THEN
	(show file))

       ))


       
