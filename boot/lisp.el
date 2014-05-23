;; paredit for schemes
(require-package 'paredit)
(eval-after-load "paredit-autoloads"
  '(progn
     (add-hook 'lisp-mode-hook 'enable-paredit-mode)
     (add-hook 'scheme-mode-hook 'enable-paredit-mode)
     (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)))

(require-package 'geiser)
