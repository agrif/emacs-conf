(use-package rust-mode
  :hook (rust-mode . (lambda ()
                       (set (make-local-variable 'compile-command)
                            "cargo build"))))
(use-package flycheck-rust
  :hook (rust-mode . flycheck-rust-setup))
(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; lsp-rust is somewhat awful, so be caeful
(use-package lsp-rust
  :demand
  :hook (rust-mode . lsp-rust-enable))
(require 'lsp-rust)

;; racer is still very useful
(use-package racer
  :hook (rust-mode . racer-mode)
  :hook (racer-mode . eldoc-mode))
