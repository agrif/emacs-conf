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
;; if we mention it, default to loading deferred
(setq use-package-always-defer t)
