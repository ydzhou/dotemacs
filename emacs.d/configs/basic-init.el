;; EDITOR CONFIGS

;; Initial page customization
(setq initial-scratch-message nil)
(setq initial-major-mode 'org-mode)
(setq inhibit-startup-screen t)

;; Display line number
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq-default display-line-numbers-width 3)

;; Display line and colume number in mode line
(line-number-mode 1)
(column-number-mode 1)

;; Highlight current line
(global-hl-line-mode -1)

;; Don't use tabs for indentation.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(blink-cursor-mode -1)
(setq visible-bell nil)
(setq ring-bell-function #'ignore)

;; No lockfiles
(setq create-lockfiles nil)

;; Use "y" and "n" in yes-or-no-p or read-answer
(setq use-short-answers t)

;; Auto pair
(electric-pair-mode 1)

;; Line wrap
(global-visual-line-mode 1)
(fringe-mode '(10 . 0))

;; Context menu
;;(context-menu-mode)

;; Terminal mouse support
(xterm-mouse-mode t)

;; Auto revert/refresh file when change detected
(setq auto-revert-use-notify nil)
(global-auto-revert-mode)

;; Auto save
(setq auto-save-list-file-prefix "~/.emacs.d/backup/")
(setq auto-save-file-name-transforms `((".*" "~/.emacs.d/backup/" t)))

;; Backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

;; Smooth scrolling
(if (version<= emacs-version "29.0")
  (setq pixel-scroll-precision-use-momentum 't)
  (pixel-scroll-precision-mode 1))

;; Select then pressing any key will remove selected text
(delete-selection-mode 1)

;; Keybinding
;; Map meta keys to command keys
(if (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  )
(if (eq system-type 'gnu/linux)
  (setq x-super-keysym 'meta)
  )

(provide 'basic-init)
