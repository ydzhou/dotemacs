;; Emacs Theme and Looks

;; Main editor theme

;; (use-package acme9-theme :config (load-theme 'acme9 t))
;; (use-package far-theme :config (load-theme 'far t))
;; (use-package far-light-theme :config (load-theme 'far-light t))

;; (use-package leuven-theme :ensure t :config (load-theme 'leuven t))
(use-package standard-themes :ensure t :config (load-theme 'standard-light t))

;; Set font
(when (eq system-type 'darwin)
  (defconst fixed-pitch-font "DejaVu Sans Mono")
  (defconst variable-pitch-font ".AppleSystemUIFont")
  (defconst cjk-font "LXGW WenKai Mono")
  (defconst font-height 140))

(when (eq system-type 'gnu/linux)
  (defconst fixed-pitch-font "DejaVu Sans Mono" )
  (defconst variable-pitch-font "Noto Sans")
  (defconst cjk-font "LXGW WenKai Mono")
  (defconst font-height 110))

(defconst font-minor-height (- font-height 20))

(defun set-line-spacing ()
  (setq-local default-text-properties '(line-spacing 0.1 line-height 1.1)))
(add-hook 'text-mode-hook 'set-line-spacing)
(add-hook 'prog-mode-hook 'set-line-spacing)

(set-face-attribute 'default nil :family fixed-pitch-font :height font-height)
(set-face-attribute 'variable-pitch variable-pitch-font)
(copy-face 'default 'fixed-pitch)

(set-fontset-font t 'han cjk-font)

(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'markdown-mode-hook 'variable-pitch-mode)

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
