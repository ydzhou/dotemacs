(defun custom-eglot-configure-python ()
  (setq venvPath "./venv/")
  (setq eglot-workspace-configuration
        (list (cons ':python (list ':venvPath venvPath ':pythonPath (concat venvPath "bin/python")))))  
  (eglot-ensure)
    )

(use-package eglot
  :ensure t
  :hook
  (go-mode . eglot-ensure)
  (python-mode . custom-eglot-configure-python)
  (typescript-mode . eglot-ensure)
  (c-mode . eglot-ensure)
  (c++-mode . eglot-ensure)
  (lisp-mode . eglot-ensure)
  :config
  (setq eglot-events-buffer-size 0
        eglot-sync-connect 2
        eglot-autoshutdown t)
  )

(provide 'eglot-init)
