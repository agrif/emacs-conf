(require-package 'rust-mode)
(require-package 'racer)
(require-package 'flycheck-rust)
(require-package 'rustfmt)

(eval-after-load "rust-mode-autoloads"
  '(progn
     (setq racer-cmd "/home/agrif/.multirust/toolchains/nightly/cargo/bin/racer")
     (setq racer-rust-src-path "/home/agrif/local/rust/src/")
     (add-hook 'rust-mode-hook #'racer-mode)
     (add-hook 'racer-mode-hook #'eldoc-mode)
     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))
