;; setup for package.el

;; repo urls
(setq package-archives 
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("marmalade" . "http://marmalade-repo.org/packages/")
	("melpa" . "http://melpa.milkbox.net/packages/")))

;; quick helper to auto-fetch-install our packages
(setq packages '())

(defun require-package (p)
  (add-to-list 'packages p))

(defun package-install-all ()
  "Auto fetch and install agrif-approved packages."
  (interactive)
  (package-refresh-contents)
  (mapc (lambda (s) 
	  (if (not (package-installed-p s))
	      (package-install s)))
	packages)
  (message "Done."))
