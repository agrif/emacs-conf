(require-package 'rust-mode)
(require-package 'racer)
(require-package 'flycheck-rust)
(require-package 'rustfmt)
(require-package 'cargo)

(eval-after-load "rust-mode-autoloads"
  '(progn
     (setq racer-cmd "/home/agrif/.multirust/toolchains/nightly/cargo/bin/racer")
     (setq racer-rust-src-path "/home/agrif/local/rust/src/")
     (add-hook 'rust-mode-hook #'racer-mode)
     (add-hook 'rust-mode-hook #'cargo-minor-mode)
     (add-hook 'racer-mode-hook #'eldoc-mode)
     (add-hook 'rust-mode-hook #'flycheck-mode)
     (add-hook 'rust-mode-hook #'flycheck-rust-setup)

     ;; use cargo to compile
     (add-hook 'rust-mode-hook
               (lambda ()
                 (set (make-local-variable 'compile-command) "cargo build")))))
