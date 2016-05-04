;; haskell with interaction
(require-package 'haskell-mode)
(require-package 'ghc)
(eval-after-load "haskell-mode-autoloads"
  '(progn
     (require 'ghc)
     (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
     (add-hook 'haskell-mode-hook (lambda () (ghc-init)))))
