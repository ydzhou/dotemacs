(use-package emacs
  :bind (
  ("M-c" . kill-ring-save)
  ("M-v" . yank)

  ("M-w" . kill-buffer-and-window)
  ("M-h" . delete-other-windows)

  ("M-s" . save-buffer)
  ("M-z" . undo)
  ("M-Z" . undo-redo)
  ("M-a" . mark-whole-buffer)
  ("M-'" . scroll-down)
  ("M-;" . scroll-up)

  ("C-x c" . comment-line)
  ("M-/" . comment-line)
  )
  )

(use-package org
  :bind (
  :map org-mode-map
  ("M-h" . delete-other-windows))
  )

(provide 'key-map-init)
