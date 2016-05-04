;; moe!
(require-package 'moe-theme)
(eval-after-load "moe-theme-autoloads"
  '(progn
     (require 'moe-theme)
     (moe-theme-set-color 'orange)
     (load-theme 'moe-dark t)))
