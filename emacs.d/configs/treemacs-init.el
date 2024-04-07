(use-package treemacs
  :ensure t
  :defer t
  :after treemacs-nerd-icons
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "C-x C-n") #'treemacs-select-window))
  :config
  (setq treemacs-collapse-dirs 0
         treemacs-display-in-side-window t
         treemacs-follow-after-init t
         treemacs-expand-after-init t
         treemacs-indentation 2
         treemacs-indentation-string " "
         treemacs-position 'left
         treemacs-max-git-entries 5000
         treemacs-no-png-images t
         treemacs-show-hidden-files nil
         treemacs-silent-refresh t
         treemacs-sorting 'alphabetic-asc
         ;; treemacs-user-mode-line-format 'none
         treemacs-wide-toggle-width 70
         treemacs-width 35)
  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t)
  (treemacs-project-follow-mode t)
  (treemacs-git-mode 'simple)
  (setq nerd-icons-color-icons nil)
  (treemacs-load-theme "nerd-icons")
  :bind
  (:map global-map
        ("C-x C-n". treemacs))
  (:map treemacs-mode-map
        ("<mouse-1>" . treemacs-single-click-expand-action))
  )

(use-package treemacs-nerd-icons :ensure t)

(provide 'treemacs-init)
