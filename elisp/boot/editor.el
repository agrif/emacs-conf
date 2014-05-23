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

;; autopair
(require-package 'autopair)
(eval-after-load "autopair-autoloads"
  '(progn
     (require 'autopair)
     (autopair-global-mode)))

;; paredit for schemes
(require-package 'paredit)
(eval-after-load "paredit-autoloads"
  '(progn
     (add-hook 'lisp-mode-hook 'enable-paredit-mode)
     (add-hook 'scheme-mode-hook 'enable-paredit-mode)
     (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)))
