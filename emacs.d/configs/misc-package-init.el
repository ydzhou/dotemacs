;; Aditional Packages
(use-package no-littering :ensure t)

(use-package exec-path-from-shell :ensure t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(use-package recentf
  :init
  (setq
    recentf-save-file "~/.emacs.d/var/recentf"
    recentf-max-saved-items 100
    recentf-max-menu-items 50)
  (recentf-mode 1)
  (run-at-time nil (* 5 60) 'recentf-save-list))

(use-package projectile
  :ensure t
  :init (projectile-mode +1)
  :bind (:map projectile-mode-map
        ("M-p" . projectile-command-map)
        ("C-c p" . projectile-command-map))
  )

(use-package ement
  :ensure t
  :custom (ement-notify-notification-predicates 'ement-notify--event-mentions-session-user-p))

(provide 'misc-package-init)
