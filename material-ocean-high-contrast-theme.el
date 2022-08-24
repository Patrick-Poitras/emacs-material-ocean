(require 'autothemer)

(autothemer-deftheme
 material-ocean-high-contrast
 "A port of the VSCode theme 'Community Material Themes - Ocean High Contrast'"

 ((((class color) (min-colors #xffffff)))

  ;; Element colors.
  (Caret                "#FFCC00")
  (EditorBackground     "#0F111A")
  ;;(EditorBackground     "#090B10")
  (EditorForeground     "#A6ACCD")
  ;;(EditorForeground      "gray70")
  (CommentsForeground    "gray45")
  (SelectionBackground  "#333955") ;; Original was #717CB450
  ;;(ModeBarBackground    "#090B10")
  (ModeBarBackground    "#000000")
  (ModeBarForeground    "#4B526D")


  (Highlight-Orange "DarkOrange2")
  (Highlight-Gray   "LightSteelBlue")

  ;; Text colors.
  (White         "#FFFFFF")
  (Black         "#000000")
  (Blue          "#82AAFF")
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
  (cursor  (:background Caret))
  (region  (:background SelectionBackground))
  (cua-rectangle (:background SelectionBackground))

  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))

  (fringe (:background ModeBarBackground))
  (vertical-border (:foreground BrightBlack))
  (hl-line (:background ModeBarBackground))
  
  (font-lock-warning-face (:foreground Red :weight 'bold))
  (font-lock-keyword-face (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Blue))
  (font-lock-type-face (:foreground Green))
  (font-lock-builtin-face (:foreground Blue))
  (font-lock-comment-face (:foreground CommentsForeground))
  (font-lock-string-face (:foreground Green))
  (font-lock-constant-face (:inherit 'default))
  (font-lock-variable-name-face (:inherit 'default))

  (slime-repl-output-face (:foreground "DarkOrange2"))
  (slime-repl-inputed-output-face (:foreground Green))

  ;; Eshell definitions
  (eshell-prompt (:foreground Blue))
  (eshell-ls-backup (:foreground CommentsForeground))
  (eshell-ls-directory (:foreground "gold"))

  ;;(magit-section-highlight (:foreground Magenta))
  (magit-keyword (:foreground Magenta))

  ;; These are identical to Ocean Material HC.
  (tree-sitter-hl-face:method.call (:inherit 'default))
  (tree-sitter-hl-face:function.call (:foreground Blue))
  (tree-sitter-hl-face:variable.parameter (:foreground Red))
  (tree-sitter-hl-face:variable (:inherit 'default))
  (tree-sitter-hl-face:operator (:foreground Magenta))
  (tree-sitter-hl-face:number (:foreground PaleOrange))
  (tree-sitter-hl-face:method (:foreground Blue))
  (tree-sitter-hl-face:property (:inherit 'default))
  (tree-sitter-hl-face:constructor (:inherit 'tree-sitter-hl-face:function))
  )
 )

(provide-theme 'material-ocean-high-contrast)
