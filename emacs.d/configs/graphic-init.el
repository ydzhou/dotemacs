(use-package nerd-icons :ensure t)

(defun frame-init (frame)
  (require 'theme-init)
  (when (display-graphic-p frame)
    (message "graphic mode on")
    (require 'treemacs-graphic-init)
    )
  )

(mapc 'frame-init (frame-list))
(add-hook 'after-make-frame-functions 'frame-init)

(provide 'graphic-init)
