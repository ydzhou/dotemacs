(use-package corfu
  :ensure t
  :custom
  (corfu-auto t)
  (corfu-auto-prefix 3)
  (corfu-cycle t)
  (corfu-echo-documentation 0)
  ;; (corfu-preview-current nil)
  ;; (corfu-preselect 'prompt)
  (corfu-quit-at-boundary t)
  (corfu-quit-no-match 'separator)
  (corfu-separator ?\s)
  :bind
  (:map corfu-map
        ("M-h" . corfu-info-documentation))
  ;; Recommended: Enable Corfu globally.  This is recommended since Dabbrev can
  ;; be used globally (M-/).  See also the customization variable
  ;; `global-corfu-modes' to exclude certain modes.
  :init
  (global-corfu-mode)
  (corfu-popupinfo-mode)
  )

(provide 'corfu-init)
