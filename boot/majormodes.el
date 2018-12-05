;; force c++ mode for swig files
(add-to-list 'auto-mode-alist '("\\.i\\'" . c++-mode))

;; and c mode for gobject introspection files
(add-to-list 'auto-mode-alist '("\\.gob\\'" . c-mode))

(use-package markdown-mode :defer t)
(use-package glsl-mode :defer t)
(use-package io-mode :defer t)
(use-package yaml-mode :defer t)
(use-package elm-mode :defer t)
(use-package cython-mode :defer t)
(use-package dockerfile-mode :defer t)
(use-package nginx-mode :defer t)
(use-package toml-mode :defer t)
(use-package vala-mode :defer t)
(use-package purescript-mode
  :defer t
  ;; use indentation minor mode
  :hook (purescript-mode . turn-on-purescript-indentation))


