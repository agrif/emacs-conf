;; We do our own package initialization.
;; If this is not here, emacs will re-add it, uncommented. Yes, really.
;;(package-initialize)

;; store customized settings in their own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; load our package management and general utility code first
(load "~/.emacs.d/boot/package")
(load "~/.emacs.d/boot/util")

;; now load everything else
(load "~/.emacs.d/boot/majormodes")
(load "~/.emacs.d/boot/editor")
(load "~/.emacs.d/boot/compile")
(load "~/.emacs.d/boot/theme")
(load "~/.emacs.d/boot/applications")
(load "~/.emacs.d/boot/git")
(load "~/.emacs.d/boot/python")
(load "~/.emacs.d/boot/lisp")
(load "~/.emacs.d/boot/rust")
(load "~/.emacs.d/boot/haskell")

;; otherwise, .v would mean coq
;; this is here to override proof general, loaded earlier
(setq auto-mode-alist
      (remove (rassoc 'coq-mode auto-mode-alist) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.v\\'" . verilog-mode))

;; start the emacs server
(require 'server)
(if (not (server-running-p))
    (server-start))
