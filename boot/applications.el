;; pianobar
(use-package pianobar
  :bind ("C-c p" . pianobar))

;; mingus
(use-package mingus
  :bind ("C-c m" . mingus))

;; mathematica
(use-package wolfram-mode
  :custom (wolfram-program "/Applications/Mathematica.app/Contents/MacOS/MathKernel"))

;; proof-general
(use-package proof-general
  :custom
  (proof-disappearing-proofs t)
  (proof-splash-enable nil)
  (proof-three-window-enable nil))

;; yes really
(use-package fireplace)
