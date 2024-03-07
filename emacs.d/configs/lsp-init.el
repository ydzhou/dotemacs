(use-package lsp-ui :ensure t :commands lsp-ui-mode)

(use-package lsp-pyright :ensure t)

(use-package lsp-mode
  :ensure t
  :custom
  (lsp-completion-show-detail t)
  (lsp-completion-show-kind t)
  (lsp-eldoc-render-all nil)
  (lsp-enable-snippet nil)
  (lsp-enable-xref t)
  (lsp-enable-imenu nil)
  (lsp-enable-completion-at-point t)
  (lsp-file-watch-threshold 5000)
  (lsp-keep-workspace-alive t)
  ;; lsp lens
  (lsp-lens-enable t)
  (lsp-lens-place-position 'above-line)
  ;; modeline
  (lsp-modeline-code-actions-enable t)
  (lsp-modeline-diagnostics-enable t)
  (lsp-modeline-workspace-status-enable t)
  ;; lsp-ui
  (lsp-ui-doc-delay 2)
  (lsp-ui-sideline-show-diagnostics nil)
  ;; (lsp-ui-doc-position 'at-point)
  (lsp-ui-doc-show-with-mouse nil)
  (lsp-ui-doc-show-with-cursor nil)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit nil)
  :hook (
  (go-mode . lsp-deferred)
  (python-mode . lsp-deferred)
  (terraform-mode . lsp-deferred)
  (typescript-mode . lsp-deferred)
  ;; (c++-mode . 'lsp-deferred)
  ;; (c-mode . lsp-deferred)
  )
  :config
  (setq lsp-idle-delay 0.500)
  (setq company-minimum-prefix-length 1)
  :commands (lsp lsp-deferred))

(provide 'lsp-init)
