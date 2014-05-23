;; others tend to use these, so load them first
(load "boot/util")
(load "boot/package")

(load "boot/majormodes")
(load "boot/editor")
(load "boot/compile")
(load "boot/applications")
(load "boot/git")
(load "boot/python")
(load "boot/lisp")

;; start the emacs server
(require 'server)
(if (not (server-running-p))
    (server-start))
