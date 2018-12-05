(use-package rust-mode
  :hook (rust-mode . (lambda ()
                       (set (make-local-variable 'compile-command)
                            "cargo build"))))
(use-package flycheck-rust
  :hook (rust-mode . flycheck-rust-setup))
(use-package cargo
  :hook (rust-mode . cargo-minor-mode))
(use-package lsp-rust
  :hook (rust-mode . lsp-rust-enable)
  :config (setq lsp-rust-rls-command '("rustup" "run" "nightly" "rls")))
