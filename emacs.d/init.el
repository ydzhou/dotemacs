;; Performance tuning
(setq gc-cons-threshold (* 1024 1024 1024 4)) ;; 4 GiB
(setq read-process-output-max (* 1024 64)) ;; 64 KiB

;; EDITOR CONFIGS
(add-to-list 'load-path "~/.emacs.d/configs/")
(add-to-list 'load-path "~/.emacs.d/colors/")

(require 'env-init)

;; Disable native-comp warnings
(setq native-comp-async-report-warnings-errors 'silent)
(setq package-native-compile t)

;; UTF-8 Encoding
(set-language-environment "UTF-8")

;; Move custom settings to a separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'menu-init)

(require 'basic-init)
(require 'key-map-init)

(require 'eglot-init)
;; (require 'lsp-bridge-init)
(require 'lang-init)

;; (require 'corfu-init)
(require 'company-init)

(require 'vertico-init)
(require 'consult-init)
(require 'orderless-init)

(require 'treemacs-init)

(require 'graphic-init)

(require 'misc-package-init)
