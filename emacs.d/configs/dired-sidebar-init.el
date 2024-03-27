(use-package all-the-icons-dired :ensure t)

(use-package dired-sidebar
  :ensure t
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :config
  (setq dired-sidebar-theme 'icons)
  (setq dired-sidebar-face `(:family "sans" :height 120))
  (setq dired-sidebar-use-custom-font t)
  )

(provide 'dired-sidebar-init)
