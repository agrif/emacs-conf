(provide 'ensure-use-package)

(eval-and-compile
  ;; we sort of depend on use-package always being here, so, install it.
  (package-initialize)
  (unless (package-installed-p 'use-package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install 'use-package))  
  (require 'use-package))
