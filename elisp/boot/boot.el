(load "boot/util")
(load "boot/modemap")
(load "boot/compile")
(load "boot/python")
(load "boot/editor")

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
;; pianobar
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
