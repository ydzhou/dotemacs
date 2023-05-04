(define-key prog-mode-map [menu-bar lsp]
            (cons "LSP" (make-sparse-keymap "LSP")))
(define-key prog-mode-map [menu-bar lsp find-references]
            '("Find References" . lsp-find-references))
(define-key prog-mode-map [menu-bar lsp find-implementation]
            '("Find Implementation" . lsp-find-implementation))
(define-key prog-mode-map [menu-bar lsp find-definition]
            '("Find Definition" . lsp-find-definition))
(define-key prog-mode-map [menu-bar lsp list-all-errors]
            '("List Errors" . lsp-treemacs-errors-list))

(define-key global-map [menu-bar tools separator-consult] menu-bar-separator)
(define-key global-map [menu-bar tools consult-grep]
            '("Consult Grep" . consult-grep))
(define-key global-map [menu-bar tools consult-ripgrep]
            '("Consult Ripgrep" . consult-ripgrep))
(define-key global-map [menu-bar tools consult-line]
            '("Consult Fine Line" . consult-line))
(define-key global-map [menu-bar tools consult-find]
            '("Consult Find File" . consult-find))

;; Show imenu in menu bar
(defun custom-menubar--add-imenu ()
  (condition-case nil (imenu-add-menubar-index) (error nil)))
(add-hook 'prog-mode-hook 'custom-menubar--add-imenu)

(setq menu-bar-final-items '(help-menu))

(provide 'menu-init)
