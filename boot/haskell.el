;; haskell with interaction
(use-package haskell-mode
  :hook (haskell-mode . haskell-indentation-mode))
(use-package intero
  :hook (haskell-mode . intero-mode))
