;; use the package manager
(require 'package)

;; repo urls
(setq package-archives 
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

;; initialize here, since we don't in init.el
(package-initialize)

;; we sort of depend on use-package always being here, so, install it.
;; this is the only package we explicitly install during boot
(unless (package-installed-p 'use-package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install 'use-package))

;; ok, now load it in the recommended way
(eval-when-compile
  (require 'use-package))

;; if we mention it, default to trying to install it
(setq use-package-always-ensure t)

;;
;; Everything after this point is deprecated! Use use-package instead.
;;

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
