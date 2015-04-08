(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style "bsd")
 '(geiser-mode-smart-tab-p t)
 '(haskell-mode-hook (quote (turn-on-haskell-indent)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote emacs-lisp-mode))
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(proof-disappearing-proofs t)
 '(proof-splash-enable nil)
 '(proof-three-window-enable nil)
 '(safe-local-variable-values (quote ((compilation-search-path "/home/agrif/devel/minecraft/overviewer/src/"))))
 '(scroll-bar-mode nil)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; call out to the local setup
(add-to-list 'load-path "~/.emacs.d/")
(load "boot/boot")
