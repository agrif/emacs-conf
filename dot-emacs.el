(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(geiser-mode-smart-tab-p t)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote emacs-lisp-mode))
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:foreground "white")))))

;; call out to the local setup
(add-to-list 'load-path "~/.emacs.d/")
(load "boot/boot")
