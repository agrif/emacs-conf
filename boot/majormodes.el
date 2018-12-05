;; force c++ mode for swig files
(add-to-list 'auto-mode-alist '("\\.i\\'" . c++-mode))

;; and c mode for gobject introspection files
(add-to-list 'auto-mode-alist '("\\.gob\\'" . c-mode))

(use-package markdown-mode)
(use-package glsl-mode)
(use-package io-mode)
(use-package yaml-mode)
(use-package elm-mode)
(use-package cython-mode)
(use-package dockerfile-mode)
(use-package nginx-mode)
(use-package toml-mode)
(use-package vala-mode)
(use-package purescript-mode
  ;; use indentation minor mode
  :hook (purescript-mode . turn-on-purescript-indentation))
