;; Aditional Packages
(use-package no-littering :ensure t)

(use-package exec-path-from-shell :ensure t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(use-package recentf
  :config
  (setq
    recentf-save-file "~/.emacs.d/var/recentf"
    recentf-max-saved-items 20
    recentf-max-menu-items 10)
  (recentf-mode 1)
  ;; (run-at-time nil (* 5 60) 'recentf-save-list)
  )

(use-package projectile
  :ensure t
  :init (projectile-mode +1)
  :bind (:map projectile-mode-map
        ("M-p" . projectile-command-map)
        ("C-c p" . projectile-command-map))
  )

(use-package nov
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
  (setq nov-text-width t)
  (defun custom-nov-font-setup()
    (face-remap-add-relative 'variable-pitch :family "EB Garamond"
                             :height 1.2))
  (add-hook 'nov-mode-hook 'custom-nov-font-setup)
  )

(provide 'misc-package-init)
