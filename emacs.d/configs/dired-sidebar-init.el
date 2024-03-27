(use-package all-the-icons-dired :ensure t)

(use-package dired-sidebar
  :ensure t
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :hook (dired-sidebar-mode . dired-hide-details-mode)
  :config
  (setq dired-sidebar-theme 'icons)
  (setq dired-sidebar-face `(:family "sans" :height 120))
  (setq dired-sidebar-use-custom-font t)
  (setq dired-sidebar-should-follow-file t)
  (setq dired-sidebar-follow-file-at-point-on-toggle-open t)
  (setq dired-sidebar-refresh-on-project-switch t)
  )

(provide 'dired-sidebar-init)
