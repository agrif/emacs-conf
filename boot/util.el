;; general emacs lisp code utilities
(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package.el")

(eval-when-compile
  (package-initialize)
  (require 'use-package))

;; make sure our path is setup
(use-package exec-path-from-shell
  :hook (after-init . exec-path-from-shell-initialize))

(defun get-hostname ()
  (car (split-string (system-name) "[.]")))

(defun anduril-p ()
  (string-equal (get-hostname) "anduril"))

;; camelcase converter
(defun un-cc-string (s &optional sep start)
  "Convert CamelCase string S to lower case with word separator SEP.
   Default for SEP is an underscore \"_\".
   If third argument START is non-nil, convert words after that
   index in STRING."
  (let ((case-fold-search nil))
    (while (string-match "[A-Z]" s (or start 1))
      (setq s (replace-match (concat (or sep "_") 
				     (downcase (match-string 0 s))) 
			     t nil s)))
    (downcase s)))
