;; local compile customizations
(require 'compile)

;; bind C-c b to do the correct next thing
(global-set-key
 (kbd "C-c b")
 (lambda ()
   (interactive)
   (if (fboundp 'recompile)
       (call-interactively 'recompile)
     (call-interactively 'compile))))

;; extra handyness
(global-set-key (kbd "C-c C-b") 'compile)
(global-set-key (kbd "C-c d") 'gdb)

;; have the compile buffer go away automatically on success
(add-to-list
 'compilation-finish-functions
 (lambda (buffer msg)
   "Notify that compilation has finished, and auto-hide the window on success."
   (if (string-match "^finished" msg)
       (progn
	 ;; success!
	 ;; give us some time to see it, then remove
	 (run-at-time 1 nil
		      (lambda (buffer) (delete-windows-on buffer)) buffer)
	 (message "Compilation Successful"))
     ;; failure :(
     (message "Compilation Failed"))))
