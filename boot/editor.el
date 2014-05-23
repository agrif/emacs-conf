;; completion
(require-package 'company)
(eval-after-load "company-autoloads"
  '(progn
     (setq company-idle-delay nil)
     (defun tab-indent-or-complete ()
       (interactive)
       (if (minibufferp)
	   (minibuffer-complete)
	 (if (looking-at "\\_>")
	     (company-complete)
	   (indent-according-to-mode))))
     (global-set-key (kbd "TAB") 'tab-indent-or-complete)
     (global-company-mode)))

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
