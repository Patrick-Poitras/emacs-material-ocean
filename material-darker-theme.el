(require 'autothemer)

(autothemer-deftheme
 material-darker
 "A port of the VSCode theme 'Community Material Themes - Darker'"

 ((((class color) (min-colors #xffffff)))

  ;; Element colors.
  (Caret                "#FFCC00")
  (EditorBackground     "#212121")
  ;;(EditorBackground     "#090B10")
  (EditorForeground     "#EEFFFF")
  ;;(EditorForeground      "gray70")
  (CommentsForeground    "545454")
  (SelectionBackground  "#303030") ;; Original was #717CB450
  (LineNumbers     "#424242")
  ;;(ModeBarBackground    "#090B10")
  (ModeBarBackground    "#212121")
  (ModeBarForeground    "#616161")
  
  (ScrollBarForeground "#283A3A") ;;#8F93A230
  (ScrollBarBackground "#212121") ;;#8F93A220

  (Highlight-Orange "DarkOrange2")
  (Highlight-Gray   "#EEEEFF")
  
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
  (cursor  (:background Caret))
  (region  (:background SelectionBackground))
  (cua-rectangle (:background SelectionBackground))

  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))

  (fringe (:background ModeBarBackground))
  (vertical-border (:foreground BrightBlack))
  (hl-line (:background ModeBarBackground))
  (scroll-bar (:foreground debug))
  
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

  (slime-repl-output-face (:foreground Highlight-Orange))
  (slime-repl-inputed-output-face (:foreground Green))

  ;; Eshell definitions
  (eshell-prompt (:foreground Blue))
  (eshell-ls-backup (:foreground CommentsForeground))
  (eshell-ls-directory (:foreground "gold"))

  ;;(magit-section-highlight (:foreground Magenta))
  (magit-keyword (:foreground Magenta))
  (magit-section-highlight (:foreground Green))

  ;; These are identical to Ocean Material HC.
  (tree-sitter-hl-face:method.call (:inherit 'default))
  (tree-sitter-hl-face:function (:foreground Blue))
  (tree-sitter-hl-face:variable.parameter (:foreground Red))
  (tree-sitter-hl-face:variable.builtin (:foreground Red))
  (tree-sitter-hl-face:variable (:inherit 'default))
  (tree-sitter-hl-face:operator (:foreground Magenta))
  (tree-sitter-hl-face:number (:foreground PaleOrange))
  (tree-sitter-hl-face:method (:foreground Blue))
  (tree-sitter-hl-face:property (:inherit 'default))
  ;;(tree-sitter-hl-face:constructor (:inherit 'tree-sitter-hl-face:function))
  (tree-sitter-hl-face:constructor (:foreground Yellow))  
  (tree-sitter-hl-face:constant.builtin (:foreground PaleOrange))
  (tree-sitter-hl-face:punctuation (:foreground Cyan))
  (tree-sitter-hl-face:type (:foreground Yellow))
  (tree-sitter-hl-face:type.builtin (:foreground Yellow))
  (tree-sitter-hl-face:keyword (:foreground Cyan))

  (js2-function-param (:inherit 'tree-sitter-hl-face:variable.parameter))
  (js2-function-call (:inherit 'tree-sitter-hl-face:function.call))
 )

 ;; End of global-configuration.txt
 )

(provide-theme 'material-darker)
