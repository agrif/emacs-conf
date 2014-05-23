;; others tend to use these, so load them first
(load "boot/util")
(load "boot/package")

(load "boot/majormodes")
(load "boot/editor")
(load "boot/compile")
(load "boot/applications")
(load "boot/git")
(load "boot/python")

;; start the emacs server
(require 'server)
(if (not (server-running-p))
    (server-start))

;; PACKAGED todo:
;; multiple cursors
;; yasnippet
;; smart tab
;; mathematica ??
;; quack / geiser
;; auctex
