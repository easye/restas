;;;; static.lisp
;;;;
;;;; This file is part of the RESTAS library, released under Lisp-LGPL.
;;;; See file COPYING for details.
;;;;
;;;; Author: Moskvitin Andrey <archimag@gmail.com>

(in-package #:restas.wookie)

(defun handle-static-file (request reply pathname)
  (declare (ignore request ))
  (setf (restas:content-type* reply)
        (or (restas:mime-type pathname)
            (restas:content-type* reply)))
  (send-reply reply
              (read-file-into-byte-vector pathname)))
