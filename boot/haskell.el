;; haskell with interaction
(require-package 'haskell-mode)
(require-package 'intero)
(eval-after-load "haskell-mode-autoloads"
  '(progn
     (add-hook 'haskell-mode-hook 'intero-mode)
     (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)))
