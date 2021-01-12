(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package")

(use-package rust-mode
  :hook (rust-mode . (lambda ()
                       (set (make-local-variable 'compile-command)
                            "cargo build"))))
(use-package flycheck-rust
  :hook (rust-mode . flycheck-rust-setup))
(use-package cargo
  :diminish cargo-minor-mode
  :hook (rust-mode . cargo-minor-mode))

;; lsp-rust is somewhat awful, so be caeful
;; (use-package lsp-rust
;;   :demand
;;   ;; this is a little bit jank right now, enable later
;;   ;;:hook (rust-mode . lsp-rust-enable)
;;   )
;(require 'lsp-rust)

;; racer is still very useful
(use-package racer
  :diminish
  :hook (rust-mode . racer-mode)
  :hook (racer-mode . eldoc-mode))
