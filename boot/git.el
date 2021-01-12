(require 'ensure-use-package "~/.emacs.d/boot/ensure-use-package.el")

(use-package gist)
(use-package magit
  :bind ("C-x g" . magit-status))

;; a little bit of special stuff for git-link
(defun git-link-gh-github (HOSTNAME DIRNAME FILENAME BRANCH COMMIT START END)
  (git-link-github "github.com" DIRNAME FILENAME BRANCH COMMIT START END))
(defun git-link-gh-github-commit (HOSTNAME DIRNAME COMMIT)
  (git-link-github "github.com" DIRNAME COMMIT))
(use-package git-link
  :config
  (add-to-list 'git-link-remote-alist '("gh" git-link-gh-github))
  (add-to-list 'git-link-commit-remote-alist '("gh" git-link-gh-github-commit)))
(defun browse-git-link ()
  "Browse to the url provided by (git-link)."
  (interactive)
  (call-interactively 'git-link)
  (browse-url (car kill-ring-yank-pointer)))
