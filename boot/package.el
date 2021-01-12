;; use the package manager
(require 'package)

;; repo urls
(setq package-archives 
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

;; https on emacs < 26.x and gnutls 3.6.x needs this for some reason
;; https://www.reddit.com/r/emacs/comments/cdf48c/failed_to_download_gnu_archive/ev1d3gk/
(if (boundp 'gnutls-algorithm-priority)
    (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package")

;; if we mention it, default to trying to install it
(require 'use-package-ensure)
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
