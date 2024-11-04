(defun frame-init (frame)
  (require 'font-init)
  (require 'theme-init)
  (when (display-graphic-p frame)(require 'treemacs-graphic-init))
  )

(mapc 'frame-init (frame-list))
(add-hook 'after-make-frame-functions 'frame-init)

(provide 'graphic-init)
