(use-package eglot
  :ensure t
  :hook
  (go-mode . eglot-ensure)
  (python-mode . eglot-ensure)
  (typescript-mode . eglot-ensure)
  (c-mode . eglot-ensure)
  (c++-mode . eglot-ensure)
  :config
  (setq eglot-events-buffer-size 0
        eglot-sync-connect 2
        eglot-autoshutdown t)
  )

;; (use-package eglot-booster
;;   :after eglot
;;   :config
;;   (eglot-booster-mode)
;;   )

(provide 'eglot-init)
