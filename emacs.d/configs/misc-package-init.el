;; Aditional Packages
(use-package no-littering :ensure t)

(use-package recentf
  :config
  (setq
    recentf-save-file "~/.emacs.d/var/recentf"
    recentf-max-saved-items 20
    recentf-max-menu-items 10)
  (recentf-mode 1)
  ;; (run-at-time nil (* 5 60) 'recentf-save-list)
  )

(use-package dired
  :config
  (define-key dired-mode-map (kbd "<mouse-2>") 'dired-find-file)
  (define-key dired-mode-map (kbd "RET") 'dired-find-file)
  (setq dired-recursive-deletes 'top)
  (setq dired-kill-when-opening-new-dired-buffer t)
  (setq ls-lisp-dirs-first t)
  (setq ls-lisp-use-insert-directory-program nil)
  )

(use-package eldoc
  :ensure t
  :config
  (setq eldoc-echo-area-use-multiline-p .3)
  )

(use-package project
  :custom
  (project-switch-commands
   '((project-dired "Dired" "d")
     (project-find-file "Find file")
     (project-display-buffer-other-frame "Display buffer" "b")))
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
