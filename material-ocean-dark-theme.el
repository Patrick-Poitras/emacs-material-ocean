(require 'autothemer)

(autothemer-deftheme
 material-ocean-dark
 "A port of the VSCode theme 'Community Material Themes - Ocean Dark'"

 ((((class color) (min-colors #xffffff)))

  ;; Element colors.
  (Caret                "#FFCC00")
  (EditorBackground     "#000000")
  (EditorBackgroundDarker "#000000")
  ;;(EditorBackground     "#090B10")
  (EditorForeground     "#A6ACCD")
  ;;(EditorForeground      "gray70")
  (CommentsForeground    "gray45")
  (SelectionBackground  "#333955") ;; Original was #717CB450
  ;;(ModeBarBackground    "#090B10")
  (ModeBarBackground    "#0F111A")
  (ModeBarForeground    "#525975")

  (HighlightActiveBackground "#090B10")

  (ScrollBarForeground "#2B2C31") ;;#8F93A230
  (ScrollBarBackground "#131315") ;;#8F93A220

  (Highlight-Orange "DarkOrange2")
  (Highlight-Gray   "LightSteelBlue")

  ;; Text colors.
  (White         "#FFFFFF")
  (Black         "#000000")
  (Blue          "#82AAFF")
  (PaleBlue      "#B2CCD6")
  (Cyan          "#89DDFF")
  (Green         "#C3E88D")
  (Magenta       "#C792EA")
  (Red           "#FF5370")
  (Yellow        "#FFCB6B")
  (BrightBlack   "#464B5D")

  (DeepYellow    "#FAA452")
  (PaleRed       "#FF7777")
  (PaleOrange    "#F78C6C")

  (debug "#FF00FF") ;; ugly color for debugging.
  )

 ;; Assign colors to faces.
 ((default (:foreground EditorForeground :background EditorBackground))
  (button  (:foreground Cyan :underline t))
  (cursor  (:background Caret))
  (region  (:background SelectionBackground))
  (cua-rectangle (:background SelectionBackground))

  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))

  (fringe (:background ModeBarBackground))
  (vertical-border (:foreground ModeBarBackground))
  (hl-line (:background HighlightActiveBackground))
  (scroll-bar (:foreground EditorBackground :background ModeBarBackground))
  (line-number (:foreground ModeBarForeground :background EditorBackgroundDarker))
  (header-line (:background EditorBackgroundDarker))
  
  (font-lock-warning-face (:foreground Red :weight 'bold))
  (font-lock-keyword-face (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Blue))
  (font-lock-preprocessor-face (:inherit 'default))
  (font-lock-doc-face (:foreground CommentsForeground))
  (font-lock-type-face (:foreground Yellow))
  (font-lock-builtin-face (:foreground Blue))
  (font-lock-comment-face (:foreground CommentsForeground))
  (font-lock-string-face (:foreground Green))
  (font-lock-constant-face (:inherit 'default))
  (font-lock-variable-name-face (:inherit 'default))

  (minibuffer-prompt (:foreground Cyan :weight 'bold))

  (slime-repl-output-face (:foreground Highlight-Orange))
  (slime-repl-inputed-output-face (:foreground Green))

  ;; Eshell definitions
  (eshell-prompt (:foreground Blue))
  (eshell-ls-backup (:foreground CommentsForeground))
  (eshell-ls-directory (:foreground Yellow :weight 'bold))
  (eshell-ls-symlink (:foreground Cyan))
  (eshell-ls-executable (:foreground Green))

  ;; Ido-mode
  ;; -> ido-indicator (not done)
  (ido-only-match (:foreground Green :weight 'bold))
  (ido-subdir (:foreground Yellow))

  ;; Magit mode
  (magit-keyword (:foreground Magenta))
  (magit-section-highlight (:foreground Green))
  (magit-section-heading (:foreground Yellow))
  (magit-branch-local (:foreground Cyan))
  (magit-branch-remote (:foreground Green))

  (org-level-1 (:foreground Blue :weight 'bold))
  (org-level-2 (:foreground Yellow :weight 'bold))
  (org-level-3 (:foreground Red :weight 'bold))
  (org-level-4 (:foreground Magenta :weight 'bold))
  (org-level-5 (:foreground Cyan :weight 'bold))
  (org-level-6 (:foreground PaleOrange :weight 'bold))
  (org-level-7 (:foreground Green :weight 'bold))
  (org-level-8 (:inherit 'default :slant 'italic :weight 'bold))
  (org-block   (:inherit 'default))
  (org-todo    (:foreground PaleOrange :weight 'bold :underline t))
  (org-done    (:foreground Green :weight 'bold :underline t))
  (org-headline-done (:inherit 'org-done :underline nil))
  (org-headline-todo (:inherit 'org-todo))

  ;; Other org-mode garbage
  ;;(org-agenda-done (:inherit 'font-lock-type-face))
  ;;(org-date (:foreground 
  ;;(org-sexp-date (:foreground Cyan))
  ;;(org-date-selected 
  ;;;; Language font-locking

  ;; Tree-sitter
  (tree-sitter-hl-face:method.call (:foreground Blue))
  (tree-sitter-hl-face:function (:foreground Blue))
  (tree-sitter-hl-face:function.macro (:foreground Blue))
  (tree-sitter-hl-face:variable.parameter (:foreground Red))
  (tree-sitter-hl-face:variable.builtin (:foreground Red))
  (tree-sitter-hl-face:variable (:inherit 'default))
  (tree-sitter-hl-face:operator (:foreground Magenta))
  (tree-sitter-hl-face:number (:foreground PaleOrange))
  (tree-sitter-hl-face:method (:foreground Blue))
  (tree-sitter-hl-face:property (:inherit 'default))
  (tree-sitter-hl-face:constructor (:foreground Yellow))  
  (tree-sitter-hl-face:constant.builtin (:foreground PaleOrange))
  (tree-sitter-hl-face:punctuation (:foreground Cyan))
  (tree-sitter-hl-face:type (:foreground Yellow))
  (tree-sitter-hl-face:type.builtin (:foreground Yellow))
  (tree-sitter-hl-face:keyword (:inherit 'font-lock-keyword-face))

  (js2-function-param (:inherit 'tree-sitter-hl-face:variable.parameter))
  (js2-function-call (:inherit 'tree-sitter-hl-face:function.call))


 )
) ;;Extra paren for termination
;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))) ;; Missing end-paren

 ;; End of global-configuration.txt
 )

(provide-theme 'material-ocean-dark)
