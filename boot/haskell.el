(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package")

;; haskell with interaction
(use-package haskell-mode
  :hook (haskell-mode . haskell-indentation-mode))
;; (use-package intero
;;   :hook (haskell-mode . intero-mode))
