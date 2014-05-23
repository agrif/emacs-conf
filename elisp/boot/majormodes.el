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
