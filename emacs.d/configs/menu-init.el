(define-key global-map [menu-bar tools separator-consult] menu-bar-separator)
(define-key global-map [menu-bar tools consult-grep]
            '("Consult Grep" . consult-grep))
(define-key global-map [menu-bar tools consult-ripgrep]
            '("Consult Ripgrep" . consult-ripgrep))
(define-key global-map [menu-bar tools consult-line]
            '("Consult Fine Line" . consult-line))
(define-key global-map [menu-bar tools consult-find]
            '("Consult Find File" . consult-find))

(setq menu-bar-final-items '(help-menu))

(provide 'menu-init)
