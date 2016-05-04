;; haskell with interaction
(require-package 'haskell-mode)
(eval-after-load "haskell-mode-autoloads"
  '(add-hook 'haskell-mode-hook 'interactive-haskell-mode))
