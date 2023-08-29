;; EDITOR CONFIGS
(add-to-list 'load-path "~/.emacs.d/configs/")

;; Disable native-comp warnings
(setq native-comp-async-report-warnings-errors 'silent)
(setq package-native-compile t)

;; UTF-8 Encoding
(set-language-environment "UTF-8")

(use-package all-the-icons :ensure t :if (display-graphic-p))

(require 'theme-init)

(require 'modeline-init)
(require 'menu-init)
(require 'toolbar-init)

(require 'basic-init)
(require 'treemacs-init)
(require 'flycheck-init)
(require 'lsp-init)
(require 'lang-init)
(require 'company-init)

(require 'vertico-init)
(require 'consult-init)
(require 'orderless-init)
(require 'leetcode-init)
(require 'misc-package-init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(connection-local-criteria-alist
   '(((:application eshell)
      eshell-connection-default-profile)))
 '(connection-local-profile-alist
   '((eshell-connection-default-profile
      (eshell-path-env-list))))
 '(custom-safe-themes
   '("59f7026ccc80fe6364ef049010c847a356896f688f242757f7ccd042a6d8f4fd" "2d0c343156093c69d9c4a5e2b59b0808dc6e7e4588a3750eca3d709eff180f87" default))
 '(package-selected-packages
   '(leuven-theme lsp-ui lsp-mode use-package go-mode exec-path-from-shell company all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
