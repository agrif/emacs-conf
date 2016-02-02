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
(load "boot/rust")

;; squelch the warning about .emacs.d in load path
(defadvice display-warning
    (around no-warn-.emacs.d-in-load-path (type message &rest unused) activate)
  "Ignore the warning about `.emacs.d' in `load-path'."
  (unless (and (eq type 'initialization)
               (string-prefix-p "Your `load-path' seems to contain\nyour `.emacs.d' directory"
                                message t))
    ad-do-it))

;; start the emacs server
(require 'server)
(if (not (server-running-p))
    (server-start))
