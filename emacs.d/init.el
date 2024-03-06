;; Performance tuning
(setq gc-cons-threshold (* 1024 1024 1024 4)) ;; 4 GiB
(setq read-process-output-max (* 1024 1024 128)) ;; 128 MiB

;; EDITOR CONFIGS
(add-to-list 'load-path "~/.emacs.d/configs/")
(add-to-list 'load-path "~/.emacs.d/colors/")

;; Disable native-comp warnings
(setq native-comp-async-report-warnings-errors 'silent)
(setq package-native-compile t)

;; UTF-8 Encoding
(set-language-environment "UTF-8")

;; Move custom settings to a separate file
(setq custom-file (expand-file-name "configs/custom.el" user-emacs-directory))
(load custom-file)

(use-package all-the-icons :ensure t :if (display-graphic-p))

(require 'theme-init)

(require 'modeline-init)
(require 'menu-init)

(require 'basic-init)
(require 'treemacs-init)
(require 'flycheck-init)
(require 'eglot-init)
(require 'lang-init)

(require 'vertico-init)
(require 'consult-init)
(require 'orderless-init)
(require 'corfu-init)

(require 'misc-package-init)
