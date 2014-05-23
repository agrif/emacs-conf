;; force c++ mode for swig files
(add-to-list 'auto-mode-alist '("\\.i\\'" . c++-mode))

;; and c mode for GOB files
(add-to-list 'auto-mode-alist '("\\.gob\\'" . c-mode))

(require-package 'markdown-mode)
(require-package 'glsl-mode)
(require-package 'rust-mode)
(require-package 'io-mode)
(require-package 'yaml-mode)
(require-package 'haskell-mode)

;; supposed to be in marmalade, but not :(
(autoload 'vala-mode "extern/vala-mode" "Major mode for Vala code." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))