;; completion
(use-package company
  :diminish
  :hook (prog-mode . company-mode)
  ;; company default keys are a bit... weird
  ;; fix that!
  ;; https://emacs.stackexchange.com/a/24800
  ;; https://github.com/raxod502/radian/blob/223abc524f693504af6ebbc70ad2d84d9a6e2d1b/radian-emacs/radian-autocomplete.el#L6-L182
  :bind (([remap completion-at-point] . company-manual-begin)
         ([remap complete-symbol] . company-manual-begin)

         :map company-active-map
         ("<tab>" . company-complete-selection)
         ("TAB" . company-complete-selection)
         ("SPC" . nil)

         :map company-active-map
         :filter (company-explicit-action-p)
         ("<return>" . company-complete-selection)
         ("RET" . company-complete-selection)
         ("<up>" . company-select-previous)
         ("<down>" . company-select-next))

  :bind* ("M-TAB" . company-manual-begin)

  :config
  (setq company-idle-delay 1)
  (setq company-minimum-prefix-length 3)
  (setq company-tooltip-limit 10)
  (setq company-frontends '(company-pseudo-tooltip-frontend))
  (setq company-show-numbers t))

;; language server protocol support
(use-package lsp-mode)
(diminish 'eldoc-mode)

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-references] . lsp-ui-peek-find-references))
  :custom (lsp-ui-doc-max-height 20))

(use-package company-lsp
  :demand ;; or it would never be loaded
  :config (push 'company-lsp company-backends))

;; a few other fun things
(use-package autopair
  :diminish
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
