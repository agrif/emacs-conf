(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package")

(use-package rustic
  :custom
  (rustic-format-trigger 'on-save)
  (rustic-format-display-method 'ignore))
