;; force c++ mode for swig files
(add-to-list 'auto-mode-alist '("\\.i\\'" . c++-mode))

;; and c mode for GOB files
(add-to-list 'auto-mode-alist '("\\.gob\\'" . c-mode))

(require-package 'markdown-mode)
(require-package 'glsl-mode)
(require-package 'io-mode)
(require-package 'yaml-mode)
(require-package 'elm-mode)
(require-package 'cython-mode)
(require-package 'dockerfile-mode)
(require-package 'nginx-mode)
(require-package 'toml-mode)

;; needs indentation mode set
(require-package 'purescript-mode)
(add-hook 'purescript-mode-hook #'turn-on-purescript-indentation)

;; supposed to be in marmalade, but not :(
(autoload 'vala-mode "extern/vala-mode" "Major mode for Vala code." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))
