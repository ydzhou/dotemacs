(defun custom-treemacs-fonts ()
  (dolist (face '(treemacs-root-face
                  treemacs-git-unmodified-face
                  treemacs-git-modified-face
                  treemacs-git-renamed-face
                  treemacs-git-ignored-face
                  treemacs-git-untracked-face
                  treemacs-git-added-face
                  treemacs-git-conflict-face
                  treemacs-directory-face
                  treemacs-directory-collapsed-face
                  treemacs-file-face
                  treemacs-tags-face))
    (set-face-attribute face nil :inherit 'variable-pitch)
    )
  )

(defun custom-treemacs-nerd-icon ()
  (dolist (face '(treemacs-nerd-icons-root-face treemacs-nerd-icons-file-face))
    ;; (set-face-attribute face nil :height font-minor-height)
    (set-face-attribute face nil :inherit 'nerd-icons-silver)
    )
  )

(use-package treemacs
  :after treemacs-nerd-icons
  :config
  (custom-treemacs-fonts)
  ;; (custom-treemacs-nerd-icon)
  (add-hook 'treemacs-mode-hook
            (lambda ()
              (when (display-graphic-p) (text-scale-increase -1))
              ))
  )

(provide 'treemacs-graphic-init)
