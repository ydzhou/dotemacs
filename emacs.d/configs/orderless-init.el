(use-package orderless
  :ensure t
  :custom
  (completion-styles '(basic orderless))
  (completion-category-overrides '((file (styles basic partial-completion))))
  )

(provide 'orderless-init)
