;; force c++ mode for swig files
(add-to-list 'auto-mode-alist '("\\.i\\'" . c++-mode))

;; and c mode for GOB files
(add-to-list 'auto-mode-alist '("\\.gob\\'" . c-mode))
