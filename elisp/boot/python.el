;; good indentation for python data structures
;; from <http://stackoverflow.com/questions/4293074/in-emacs-python-mode-customize-multi-line-statement-indentation>
(defadvice python-calculate-indentation (around outdent-closing-brackets)
  "Handle lines beginning with a closing bracket and indent them
   so that they line up with the line containing the corresponding
   opening bracket."
  (save-excursion
    (beginning-of-line)
    (let ((syntax (syntax-ppss)))
      (if (and (not (eq 'string (syntax-ppss-context syntax)))
	       (python-continuation-line-p)
	       (cadr syntax)
	       (skip-syntax-forward "-")
	       (looking-at "\\s)"))
	  (progn
	    (forward-char 1)
	    (ignore-errors (backward-sexp))
	    (setq ad-return-value (current-indentation)))
	ad-do-it))))
(ad-activate 'python-calculate-indentation)
