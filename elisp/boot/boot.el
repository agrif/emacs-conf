;; others tend to use these, so load them first
(load "boot/util")
(load "boot/package")

(load "boot/modemap")
(load "boot/editor")
(load "boot/compile")
(load "boot/applications")
(load "boot/python")

;; start the emacs server
(require 'server)
(if (not (server-running-p))
    (server-start))

;; PACKAGED todo:
;; multiple cursors
;; git
;(load "boot/git")
;; yasnippet
;; smart tab
;; autopair
;; sourcepawn
;; mingus
;; markdown
;; glsl
;; mathematica ??
;; word count mode
;; gist
;; rust
;; vala
;; io
;; yaml
;; quack / geiser
;; haskell
;; auctex
;; paredit
;; flymake
