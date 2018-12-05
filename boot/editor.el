;; completion
(use-package company
  :defer t
  :hook (prog-mode . company-mode))

;; language server protocol support
(use-package lsp-mode :defer t)
(use-package lsp-ui
  :defer t
  :hook (lsp-mode . lsp_ui_mode))
(use-package company-lsp
  :demand ;; or it would never be loaded
  :after (company)
  :config (push 'company-lsp company-backends))

;; a few other fun things
(use-package autopair
  :defer t
  :hook (prog-mode . autopair-mode))
(use-package flycheck
  :defer t
  :hook (prog-mode . flycheck-mode))
(use-package lorem-ipsum :defer t)

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
