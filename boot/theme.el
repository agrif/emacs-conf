(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package")

;; https://emacs.stackexchange.com/a/83204
;; HACK Resize new frames shortly after creation.  Works around
;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=67654
(setq initial-frame-alist '((width . 80) (height . 36)))
(add-hook 'after-make-frame-functions
   (defun +resize-after-make-frame (frame)
     (let ((width (/ (frame-text-width frame) (frame-char-width frame)))
           (height (/ (frame-text-height frame) (frame-char-height frame))))
       (sleep-for 0 100)
       (set-frame-size frame width height))))

;; moe!
(use-package moe-theme
  :demand
  :config
  (load-theme 'moe-dark t)
  (moe-theme-apply-color 'orange))

;; and powerline
(use-package powerline
  :demand
  :config
  (when (display-graphic-p)
    (powerline-default-theme)))
