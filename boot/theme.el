;; moe!
(use-package moe-theme
  :demand
  :config
  (load-theme 'moe-dark t)
  (moe-theme-set-color 'orange))

;; and powerline
(use-package powerline
  :demand
  :config
  (when (display-graphic-p)
    (powerline-default-theme)))
