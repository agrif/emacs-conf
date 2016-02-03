(require-package 'rust-mode)
(require-package 'racer)
(require-package 'flycheck-rust)
(require-package 'rustfmt)
(require-package 'cargo)

(eval-after-load "rustfmt-autoloads"
  '(setq rustfmt-bin "/home/agrif/.multirust/toolchains/nightly/cargo/bin/rustfmt"))

(eval-after-load "racer-autoloads"
  '(progn
     (setq racer-cmd "/home/agrif/.multirust/toolchains/nightly/cargo/bin/racer")
     (setq racer-rust-src-path "/home/agrif/local/rust/src/")
     (add-hook 'racer-mode-hook #'eldoc-mode)))

(eval-after-load "rust-mode-autoloads"
  '(add-hook 'rust-mode-hook
             (lambda ()
               (racer-mode)
               (cargo-minor-mode)
               (flycheck-rust-setup)
               (flycheck-mode)
               ;; use cargo to compile
               (set (make-local-variable 'compile-command) "cargo build"))))
