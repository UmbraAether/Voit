;; main.el -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025 Dahlia
;;
;; Author: Lex-Dellimere <Lex.D-Work@proton.me>
;; Maintainer: Lex-Dellimere <Lex.D-Work@proton.me>
;; Created: March 19, 2025
;; Modified: March 19, 2025
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/dahlia/main
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;; Commentary:
;;
;;
;;
;;; Code:

(defun main-welcome-msg ()
  "Welcome message inserted into the buffer."
  (format "This is the welcome message that will be expanded on later\n"))

(defun main-open-buffer ()
  "Open a new buffer named *Main Buffer* and insert a welcome message."
  (interactive)
  (let ((buf (get-buffer-create "*Main Buffer*")))
    (with-current-buffer buf
      (erase-buffer)
      (insert (main-welcome-msg))
      (insert "Type h for the help menu"))
    (pop-to-buffer buf)))

(provide 'main)
;;; main.el ends here
