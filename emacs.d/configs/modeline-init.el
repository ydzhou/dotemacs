(defvar mode-line-toggle-treemacs-map
  (let ((map (make-sparse-keymap)))
    (define-key map [mode-line mouse-1]
      (lambda (_e)
        (interactive "e")
        (treemacs)))
    map))

(setq-default mode-line-format
      '(
       (:eval (propertize (propertize (all-the-icons-faicon "bars")
            'face `(:family ,(all-the-icons-faicon-family)) 'mouse-face 'mode-line-highlight 'display '(raise -0.1))
                          'local-map mode-line-toggle-treemacs-map))
       "  %e  "
       mode-line-front-space
       mode-line-mule-info
       mode-line-modified
       mode-line-remote
       mode-line-frame-identification
       "  "
       mode-line-buffer-identification
       "  "
       mode-line-position
       "      "
       (vc-mode vc-mode)
       mode-line-modes
       ))

(provide 'modeline-init)
