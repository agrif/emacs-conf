(require-package 'gist)
(require-package 'git-link)
(require-package 'magit)

(eval-after-load "git-link-autoloads"
  '(progn
     (defun browse-git-link ()
       "Browse to the url provided by (git-link)."
       (interactive)
       (call-interactively 'git-link)
       (browse-url (car kill-ring-yank-pointer)))))
(eval-after-load "git-link" ; special handling for gh: special remotes
  '(progn
     (add-to-list 'git-link-remote-alist '("gh" git-link-github))))

(eval-after-load "magit-autoloads"
  '(progn
     (global-set-key (kbd "C-x g") 'magit-status)))
