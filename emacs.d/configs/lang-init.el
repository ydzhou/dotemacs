;; Programming Language Configs

(use-package go-mode
  :ensure t
  :config
  (setq gofmt-command "goimports")
  (defun go-save-hooks ()
    (add-hook 'before-save-hook 'gofmt-before-save))
  :hook
  (go-mode . go-save-hooks)
  )

(use-package terraform-mode
  :ensure t
  :custom (terraform-indent-level 2)
  )

(use-package yaml-mode
  :ensure t
  :custom (yaml-indent-offset 2))

(use-package protobuf-mode :ensure t)

(use-package typescript-mode
  :ensure t
  :custom (typescript-indent-level 2))

(provide 'lang-init)
