; quiet down package manager (this is done later)
;(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style "bsd")
 '(geiser-mode-smart-tab-p t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote emacs-lisp-mode))
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(proof-disappearing-proofs t)
 '(proof-splash-enable nil)
 '(proof-three-window-enable nil)
 '(scroll-bar-mode nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(verilog-auto-endcomments nil)
 '(verilog-auto-newline nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; call out to the local setup
;; append .emacs.d to load path so that there can be no conflicts
;; https://stackoverflow.com/questions/24779041/disable-warning-about-emacs-d-in-load-path
(add-to-list 'load-path (expand-file-name "~/.emacs.d") t)
(load "boot/boot")
