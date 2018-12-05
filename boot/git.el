(use-package gist)
(use-package magit
  :bind ("C-x g" . magit-status))

;; a little bit of special stuff for git-link
(defun git-link-gh-github (HOSTNAME DIRNAME FILENAME BRANCH COMMIT START END)
  (git-link-github "github.com" DIRNAME FILENAME BRANCH COMMIT START END))
(defun git-link-gh-github-commit (HOSTNAME DIRNAME COMMIT)
  (git-link-github "github.com" DIRNAME COMMIT))
(use-package git-link
  :custom (git-link-open-in-browser t)
  :config
  (add-to-list 'git-link-remote-alist '("gh" git-link-gh-github))
  (add-to-list 'git-link-commit-remote-alist '("gh" git-link-gh-github-commit)))
