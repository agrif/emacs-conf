(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package.el")

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
(eval-and-compile
  (add-to-list 'load-path "~/.emacs.d/boot/extern/ferm-mode")
  (require 'ferm-mode))

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

;; https://stackoverflow.com/a/50855606
(defun fix-asm-mode ()
  ;; no electric semicolons
  (local-unset-key (vector asm-comment-char))
  ;; no electric indent on :
  (electric-indent-local-mode) ; toggle off
  ;; no asm mode you do not know better than the default
  (setq tab-always-indent (default-value 'tab-always-indent))
  (defun asm-calculate-indentation ()
    (or
     ;; labels go all the way left
     (and (looking-at "[.@_[:word:]]+:") 0)
     ;; triple-comments go all the way left
     (and (looking-at "\\s<\\s<\\s<") 0)
     ;; special directives go all the way left
     (and (looking-at "c?global\\|section\\|include\\|lib\\|define\\|defgroup\\|defvars\\|extern\\|if\\|ifdef\\|else\\|endif\\|module\\|public\\|default\\|INIT_..X") 0)
     ;; single-comments go to comment column
     (and (looking-at "\\s<\\(\\S<\\|\\'\\)") comment-column)
     ;; the rest goes to 4
     (or 4))))
(add-hook 'asm-mode-hook #'fix-asm-mode)
