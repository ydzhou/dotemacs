;; Emacs Theme and Looks

;; Main editor theme

;; (use-package acme9-theme :config (load-theme 'acme9 t))

;; (use-package leuven-theme :ensure t :config (load-theme 'leuven t))
(use-package ef-themes :ensure t :config (load-theme 'ef-duo-light t))
;; (use-package standard-themes :ensure t :config (load-theme 'standard-light t))

;; Set cursor shape
(setq-default cursor-type '(bar . 4))

;; Set mode line
(defvar mode-line-toggle-treemacs-map
  (let ((map (make-sparse-keymap)))
    (define-key map [mode-line mouse-1]
      (lambda (_e)
        (interactive "e")
        (treemacs)))
    map))

(setq-default mode-line-format
              '(
                (:eval (propertize
                        (propertize (nerd-icons-codicon "nf-cod-files") 'mouse-face 'mode-line-highlight 'display '(raise -0.1))
                        'local-map mode-line-toggle-treemacs-map))
                "  %e  "
                mode-line-front-space
                ;; mode-line-mule-info
                ;; mode-line-modified
                ;; mode-line-remote
                ;; mode-line-frame-identification
                "  "
                mode-line-buffer-identification
                "  "
                mode-line-position
                "      "
                (vc-mode vc-mode)
                mode-line-modes
                ))

(set-face-attribute 'mode-line nil :inherit 'variable-pitch)

;; Set tab line mode
(global-tab-line-mode 1)
;; Disable tab line in below modes
(setq tab-line-exclude-modes '(completion-list-mode help-mode dired-sidebar-mode treemacs-mode))
;; Customize tab line
(set-face-attribute 'tab-line nil :inherit 'mode-line-inactive :background 'unspecified :foreground 'unspecified :height 1.0 :box nil)
(set-face-attribute 'tab-line-tab nil :inherit 'tab-line :background 'unspecified :foreground "black" :box nil)
(set-face-attribute 'tab-line-tab-inactive nil :inherit 'mode-line-inactive :background 'unspecified :foreground 'unspecified)
(set-face-attribute 'tab-line-tab-current nil :inherit 'mode-line :background 'unspecified :foreground 'unspecified :weight 'semi-bold :box nil)
(set-face-attribute 'tab-line-highlight nil :inherit 'mode-line-highlight :background 'unspecified :foreground 'unspecified :box 'unspecified)

(provide 'theme-init)
