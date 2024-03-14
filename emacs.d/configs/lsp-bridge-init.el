(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package markdown-mode :ensure t)

(add-to-list 'load-path "/opt/lsp-bridge")
(use-package lsp-bridge
  :hook
  (prog-mode . lsp-bridge-mode)
  :config
  (setq lsp-bridge-enable-log nil)
  (setq acm-backend-lsp-enable-auto-import nil)
  (setq acm-enable-yas nil)
  (setq acm-candidate-match-function 'orderless-prefixes)
  :bind(
  :map lsp-bridge-mode-map
  ("M-l d" . lsp-bridge-find-def)
  ("M-l r" . lsp-bridge-find-references)
  ("M-l i" . lsp-bridge-find-impl)
  ("M-l p" . lsp-bridge-peek))
  )

(provide 'lsp-bridge-init)
