;; use the package manager
(require 'package)

;; repo urls
(setq package-archives 
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

;; https on emacs < 26.x and gnutls 3.6.x needs this for some reason
;; https://www.reddit.com/r/emacs/comments/cdf48c/failed_to_download_gnu_archive/ev1d3gk/
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

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

;; do automatic package updates
(use-package auto-package-update
  :demand
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

;; diminish support
(use-package diminish :demand)
