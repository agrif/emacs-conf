;; completion
(use-package company
  :hook (prog-mode . company-mode))

;; language server protocol support
(use-package lsp-mode)
(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))
(use-package company-lsp
  :demand ;; or it would never be loaded
  :config (push 'company-lsp company-backends))

;; a few other fun things
(use-package autopair
  :hook (prog-mode . autopair-mode))
(use-package flycheck
  :hook (prog-mode . flycheck-mode)
  :custom
  (flycheck-disabled-checkers '(emacs-lisp-checkdoc) "Turn off documentation checks for elisp."))
(use-package lorem-ipsum)

;; eval-and-replace bind to C-x C-e
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))
(global-set-key (kbd "C-x C-e") 'eval-and-replace)
