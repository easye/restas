;;;; packages.lisp
;;;;
;;;; This file is part of the RESTAS library, released under Lisp-LGPL.
;;;; See file COPYING for details.
;;;;
;;;; Author: Moskvitin Andrey <archimag@gmail.com>


(defpackage #:restas.hunchentoot
  (:use #:cl #:iter #:restas)
  #|----------------------------------|#
  (:export #:*default-host-redirect*
           #|-------------------------|#
           ;; acceptors
           #:restas-acceptor
           #:restas-ssl-acceptor
           #|-------------------------|#
           ;; start/stop
           #:start
           #:stop-all
           #|-------------------------|#
           ;; debug
           #:*max-debugging-threads*
           #:debug-mode-on
           #:debug-mode-off
           #|-------------------------|#
           ;; misc
           #:request-full-uri))