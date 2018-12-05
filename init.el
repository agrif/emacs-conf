;; quiet down package manager (this is done later)
;;(package-initialize)

;; store customized settings in their own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; call out to the local setup
(load "~/.emacs.d/boot/boot.el")
