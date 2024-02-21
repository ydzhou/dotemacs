(use-package eglot
  :ensure t
  :hook
  (go-mode . eglot-ensure)
  (python-mode . eglot-ensure)
  (typescript-mode . eglot-ensure)
  )

(provide 'eglot-init)
