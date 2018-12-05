;; We do our own package initialization.
;; If this is not here, emacs will re-add it, uncommented. Yes, really.
;;(package-initialize)

;; store customized settings in their own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; load our package management and general utility code first
(load "~/.emacs.d/boot/package.el")
(load "~/.emacs.d/boot/util.el")

;; now load everything else
(load "~/.emacs.d/boot/majormodes.el")
(load "~/.emacs.d/boot/editor.el")
(load "~/.emacs.d/boot/compile.el")
(load "~/.emacs.d/boot/theme.el")
(load "~/.emacs.d/boot/applications.el")
(load "~/.emacs.d/boot/git.el")
(load "~/.emacs.d/boot/python.el")
(load "~/.emacs.d/boot/lisp.el")
(load "~/.emacs.d/boot/rust.el")
(load "~/.emacs.d/boot/haskell.el")

;; otherwise, .v would mean coq
(setq auto-mode-alist
      (remove (rassoc 'coq-mode auto-mode-alist) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.v\\'" . verilog-mode))

;; start the emacs server
(require 'server)
(if (not (server-running-p))
    (server-start))
