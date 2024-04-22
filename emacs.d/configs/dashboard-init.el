(use-package dashboard
  :ensure t
  :config
  (setq dashboard-center-content t)
  (setq dashboard-image-banner-max-height 250)
  (setq dashboard-startup-banner "~/.emacs.d/emacs-splash.png")
  (setq dashboard-items '((projects  . 15)
                          (recents   . 10)
                          (registers . 5)))
  (setq dashboard-startupify-list '(dashboard-insert-banner
                                  dashboard-insert-newline
                                  ;; dashboard-insert-banner-title
                                  dashboard-insert-newline
                                  dashboard-insert-navigator
                                  dashboard-insert-newline
                                  dashboard-insert-init-info
                                  dashboard-insert-items))
  (dashboard-setup-startup-hook))

(provide 'dashboard-init)
