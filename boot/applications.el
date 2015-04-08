;; pianobar
(require-package 'pianobar)
(eval-after-load "pianobar-autoloads"
  '(progn
     (autoload 'pianobar "pianobar" nil t)
     (global-set-key (kbd "C-c p") 'pianobar)))

;; mingus (not in repos :( )
(add-to-list 'load-path "~/.emacs.d/extern/mingus/")
(autoload 'mingus "mingus" "emacs MPD plugin" t)
(global-set-key (kbd "C-c m") 'mingus)

;; mathematica (also not in repos)
(autoload 'mathematica "extern/mathematica" "Mathematica Interaction Mode" t)
(if (anduril-p)
    (setq mathematica-command-line "/Applications/Mathematica.app/Contents/MacOS/MathKernel"))

;; proof-general (still not in repos boo)
(load-file "~/.emacs.d/extern/proofgeneral/generic/proof-site.el")
