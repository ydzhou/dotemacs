(defgroup far-light-theme nil
  "Options for far manager theme."
  :group 'faces)

(deftheme far-light "A color theme based on Far Manager")

;; Color palette

(let
    (
     (cyan "#00FFFF")
     (fg "#000060")
     (bg "#E0E0E0")
     (blue "#000080")
     (white "#FFFFFF")
     (light-gray "#C0C0C0")
     (gray "#808080")
     (light-green "#00FF00")
     (green "#00A000")
     (black "#000000")
     (teal "#008080")
     (light-red "#FF0000")
     (red "#A00000")
     (yellow "#FFFF05")
     )

;; Theme Faces
  (custom-theme-set-faces
   'far-light

;; basic coloring
   `(default ((t (:foreground ,fg :background ,bg))))
   `(shadow ((t (:foreground ,gray))))
   `(highlight ((t (:foreground ,black :background ,teal))))

;; mode-line
   `(mode-line ((t (:foreground ,black :background ,teal))))
   `(mode-line-inactive ((t (:foreground ,black :background ,gray))))
   `(mode-line-highlight ((t (:foreground ,white :background ,black))))
   `(mode-line-buffer-id ((t (:foreground ,black :weight bold))))

;; font lock
   `(font-lock-builtin-face ((t (:foreground ,fg :weight normal))))
   `(font-lock-function-name-face ((t (:foreground ,black :weight normal))))
   `(font-lock-string-face ((t (:foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,black :weight normal)))) ; if, else, for, while, return...
   `(font-lock-type-face ((t (:foreground ,black :weight normal)))) ; int, float, string, void...
   `(font-lock-constant-face ((t (:foreground ,fg :weight normal)))) ; NULL, nullptr, true, false...
   `(font-lock-variable-name-face ((t (:foreground ,fg :weight normal))))
   `(font-lock-comment-face ((t (:foreground ,gray :italic nil))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gray :italic nil))))
   `(font-lock-doc-face ((t (:foreground ,gray :italic nil))))
   `(font-lock-negation-char-face ((t (:foreground ,fg :weight normal))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg :weight normal))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,fg :weight normal))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,fg :weight normal))))
   `(font-lock-warning-face ((t (:foreground ,fg :background ,red :weight normal))))

;; dired
   `(dired-directory ((t (:foreground ,black :weight normal))))

;; show-paren
   `(show-paren-mismatch ((t (:foreground ,red :weight normal))))
   `(show-paren-match ((t (:foreground ,red :weight bold))))

;; menu
   `(menu ((t (:foreground ,white :background ,teal))))   
   `(tty-menu-enabled-face ((t (:foreground ,black :background ,teal))))
   `(tty-menu-disabled-face ((t (:foreground ,gray :background ,teal))))
   `(tty-menu-selected-face ((t (:foreground ,white :background ,black))))

;; isearch
   `(isearch ((t (:foreground ,black :weight normal :background ,teal))))
   `(isearch-fail ((t (:foreground ,black :weight normal :background ,red))))
   `(lazy-highlight ((t (:foreground ,black :weight normal :background ,teal))))
   `(match ((t (:foreground ,black :weight normal :background ,teal))))

   `(region ((t (:foreground ,black :background ,teal :extend nil))))
   `(secondary-selection ((t (:background ,teal))))
   `(trailing-whitespace ((t (:background ,red))))
   
   `(link ((t (:foreground ,yellow :underline nil :weight normal))))
   `(link-visited ((t (:foreground ,yellow :underline nil :weight normal))))   

   `(fringe ((t (:foreground ,gray :background ,bg))))
   `(cursor ((t (:foreground ,yellow :background ,yellow))))
   `(scroll-bar ((t (:foreground ,black :background ,bg))))
   `(tooltip ((t (:foreground ,black :background ,teal))))

   ;; company
   `(company-tooltip ((t (:foreground ,black :background ,light-gray))))
   `(company-tooltip-common ((t (:foreground ,yellow))))
   `(company-tooltip-selection ((t (:foreground ,white :background ,teal))))
   `(company-tooltip-annotation ((t (:foreground ,black))))
   `(company-tooltip-quick-access ((t (:foreground ,black))))
   `(company-tooltip-scrollbar-thumb ((t (:background ,teal))))
   `(company-tooltip-scrollbar-track ((t (:background ,light-gray))))   
   ))
   
;; ###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'far-light)
(provide 'far-light-theme)
