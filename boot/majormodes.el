;; force c++ mode for swig files
(add-to-list 'auto-mode-alist '("\\.i\\'" . c++-mode))

;; and c mode for gobject introspection files
(add-to-list 'auto-mode-alist '("\\.gob\\'" . c-mode))

(use-package markdown-mode)
(use-package glsl-mode)
(use-package io-mode)
(use-package yaml-mode)
;;(use-package elm-mode)
(use-package cython-mode)
(use-package dockerfile-mode)
(use-package nginx-mode)
(use-package toml-mode)
(use-package vala-mode)
(use-package purescript-mode
  ;; use indentation minor mode
  :hook (purescript-mode . turn-on-purescript-indentation))
(use-package jinja2-mode)

;; not in the package repos!
(add-to-list 'load-path "~/.emacs.d/boot/extern/ferm-mode")
(require 'ferm-mode)

(defun reformat-verilog-on-auto ()
  (verilog-indent-buffer))
(defun undo-verilog-autos (&rest args)
  (when (eq major-mode 'verilog-mode)
    (let ((modified (buffer-modified-p)))
      (verilog-delete-auto)
      (set-buffer-modified-p modified))))
(use-package verilog-mode
  :hook ((verilog-auto . reformat-verilog-on-auto)
         (after-save . undo-verilog-autos)
         (find-file . undo-verilog-autos)))
