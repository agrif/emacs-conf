(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package")

;; paredit for schemes
(use-package paredit
  :diminish
  :hook (lisp-mode . enable-paredit-mode)
  :hook (scheme-mode . enable-paredit-mode)
  :hook (emacs-lisp-mode . enable-paredit-mode))

;; geiser!
(use-package geiser
  :custom (geiser-mode-smart-tab-p t))
