(defgroup acme9-theme nil
  "Options for acme theme."
  :group 'faces)

(deftheme acme9 "A color theme based on Acme & Sam")

;; Color palette

(let (
      ;; Standardized palette
      ;; acme
      (cyan            "#9EEEEE")
      (aqua            "#EAFFFF")
      (yellow-dark     "#99994B")
      (yellow          "#EEEE9E")
      (purple          "#8888CC")
      (white           "#FFFFFF")
      (bg              "#FFFFEA") 
      (fg              "#000000")
      ;; sam
      (green           "#448845")
      (green-light     "#EAFFE9")
      ;; extra
      (red             "#800000")
      (blue            "#000087")
      (gray            "#E5E5D0")
      )

;; Theme Faces
  (custom-theme-set-faces
   'acme9

;; basic coloring
   `(default                                      ((t (:foreground ,fg :background ,bg))))
   `(shadow                                       ((t (:foreground ,fg))))
   `(highlight                                    ((t (:inherit link :background ,cyan))))

;; isearch   
   `(isearch                                      ((t (:foreground ,fg :weight normal :background ,cyan))))
   `(isearch-fail                                 ((t (:foreground ,fg :weight normal :background ,red))))
   `(query-replace                                ((t (:foreground ,fg :weight normal :background ,aqua))))
   `(lazy-highlight                               ((t (:foreground ,fg :weight normal :background ,aqua))))

   `(region                                       ((t (:foreground ,fg :background ,yellow :extend nil))))
   `(secondary-selection                          ((t (:background ,yellow))))
   `(trailing-whitespace                          ((t (:background ,red))))

;; text-mode   
   `(escape-glyph                                 ((t (:foreground ,fg :normal nil))))
   ;; `(homoglyph)

;; mode-line
   `(mode-line ((t (:foreground ,fg :background ,aqua :box t))))
   `(mode-line-inactive ((t (:foreground ,fg :background ,gray :box t))))
   `(mode-line-highlight ((t (:foreground ,fg :background ,cyan))))
   `(mode-line-buffer-id ((t (:foreground ,fg :weight normal))))

;; header-line
   `(header-line ((t (:foreground ,fg :background ,aqua :box t))))   

   `(vertical-border ((t (:foreground ,yellow-dark))))   
   `(minibuffer-prompt                            ((t (:foreground ,fg :weight normal)))) 
   `(fringe                                       ((t (:foreground ,fg :background ,bg))))
   `(cursor                                       ((t (:foreground ,bg :background ,fg))))
   `(tooltip                                      ((t (:foreground ,fg :background ,yellow))))
   `(scroll-bar ((t (:foreground ,yellow-dark :background ,bg))))

;; menu
   `(menu ((t (:foreground ,bg :background ,fg))))   
   `(tty-menu-enabled-face ((t (:foreground ,white :background ,green-light))))
   `(tty-menu-disabled-face ((t (:foreground ,gray :background ,green-light))))
   `(tty-menu-selected-face ((t (:foreground ,white :background ,green))))
   
   ;; `(button                                       ((t (:underline t))))
   `(link ((t (:foreground ,fg :background ,aqua :underline nil :weight normal))))
   ;; `(link-visited                                 ((t (:foreground ,acme-blue :underline t :weight normal))))
   `(line-number ((t (:foreground ,yellow-dark :background ,bg))))
   `(line-number-current-line ((t (:foreground ,fg :background ,bg))))

   `(success ((t (:foreground ,green :weight normal))))
   `(warning ((t (:foreground ,red :weight normal))))
   `(error ((t (:foreground ,red :normal t))))

;; font lock
   `(font-lock-builtin-face                       ((t (:foreground ,fg :weight normal))))
   `(font-lock-function-name-face                 ((t (:foreground ,fg :weight normal))))
   `(font-lock-string-face                        ((t (:foreground ,fg))))
   `(font-lock-keyword-face                       ((t (:foreground ,fg :weight normal)))) ; if, else, for, while, return...
   `(font-lock-type-face                          ((t (:foreground ,fg :weight normal)))) ; int, float, string, void...
   `(font-lock-constant-face                      ((t (:foreground ,fg :weight normal)))) ; NULL, nullptr, true, false...
   `(font-lock-variable-name-face                 ((t (:foreground ,fg :weight normal))))
   `(font-lock-comment-face                       ((t (:foreground ,yellow-dark))))
   `(font-lock-comment-delimiter-face             ((t (:foreground ,yellow-dark))))
   `(font-lock-doc-face                           ((t (:foreground ,yellow-dark))))
   `(font-lock-negation-char-face                 ((t (:foreground ,fg :weight normal))))
   `(font-lock-preprocessor-face                  ((t (:foreground ,fg :weight normal))))
   `(font-lock-regexp-grouping-construct          ((t (:foreground ,purple :weight normal))))
   `(font-lock-regexp-grouping-backslash          ((t (:foreground ,purple :weight normal))))
   `(font-lock-warning-face                       ((t (:foreground ,red :weight normal))))

;; table
   `(table-cell                                   ((t (:background ,gray))))

;; dired/dired+/dired-subtree
   `(dired-directory ((t (:foreground ,fg :weight bold))))

;; show-paren
   `(show-paren-mismatch ((t (:foreground ,fg :background ,red :weight normal))))
   `(show-paren-match ((t (:foreground ,fg :background ,cyan :weight normal))))

   ))

   
;; ###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'acme9)
(provide 'acme9-theme)
