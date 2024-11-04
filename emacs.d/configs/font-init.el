;; Set font
(when (eq system-type 'darwin)
  (defconst fixed-pitch-font "Source Code Pro")
  (defconst variable-pitch-font ".AppleSystemUIFont")
  (defconst cjk-font "LXGW WenKai Mono")
  (defconst font-height 140))

(when (eq system-type 'gnu/linux)
  (defconst fixed-pitch-font "Source Code Pro" )
  (defconst variable-pitch-font "Noto Sans")
  (defconst cjk-font "LXGW WenKai Mono")
  (defconst font-height 100))

(defconst font-minor-height (- font-height 20))

(defun set-line-spacing ()
  (setq-local default-text-properties '(line-spacing 0.1 line-height 1.1)))
(add-hook 'text-mode-hook 'set-line-spacing)
(add-hook 'prog-mode-hook 'set-line-spacing)

(set-face-attribute 'default nil :family fixed-pitch-font :height font-height)
(set-face-attribute 'variable-pitch variable-pitch-font)
(copy-face 'default 'fixed-pitch)

(set-fontset-font t 'han cjk-font)

(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'markdown-mode-hook 'variable-pitch-mode)

(provide 'font-init)
