;; Performance tuning
(setq gc-cons-threshold (* 1024 1024 1024 2)) ;; 2 GiB
(setq read-process-output-max (* 1024 1024 64)) ;; 128 MiB

;; EDITOR CONFIGS
(add-to-list 'load-path "~/.emacs.d/configs/")
(add-to-list 'load-path "~/.emacs.d/colors/")

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  )

(use-package all-the-icons :if (display-graphic-p))

;; Disable native-comp warnings
(setq native-comp-async-report-warnings-errors 'silent)
(setq package-native-compile t)

;; UTF-8 Encoding
(set-language-environment "UTF-8")

;; Move custom settings to a separate file
(setq custom-file (expand-file-name "configs/custom.el" user-emacs-directory))
(load custom-file)

(require 'theme-init)

(require 'modeline-init)
(require 'menu-init)

(require 'basic-init)
(require 'key-map-init)

(require 'treemacs-init)
;; (require 'dired-sidebar-init)

(require 'eglot-init)
;; (require 'lsp-bridge-init)
(require 'lang-init)

;; (require 'corfu-init)
(require 'company-init)

(require 'vertico-init)
(require 'consult-init)
(require 'orderless-init)

(require 'misc-package-init)
