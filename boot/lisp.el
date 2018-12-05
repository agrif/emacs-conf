;; paredit for schemes
(use-package paredit
  :hook (lisp-mode . enable-paredit-mode)
  :hook (scheme-mode . enable-paredit-mode)
  :hook (emacs-lisp-mode . enable-paredit-mode))

;; geiser!
(use-package geiser
  :custom (geiser-mode-smart-tab-p t))
