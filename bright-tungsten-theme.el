(require 'autothemer)

(autothemer-deftheme
 bright-tungsten
 "A theme mostly inspired by the VSCode theme 'Community Material Themes - Ocean High Contrast'"

 ((((class color) (min-colors #xffffff)))

  ;; Color palette definition.

  ;; Element colors.
  (EditorBackground     "#0F111A")
  (EditorForeground "#8F93A2")
  ;;(EditorForeground     "gray80")
  (CommentsForeground "gray35")
  (SelectionBackground  "#80CBC4")
  (ModeBarBackground    "#090B10")
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

  ;;(magenta "#FF00FF") ;; ugly color for debugging.
  )

 ;; Assign colors to faces.
 ((default (:foreground EditorForeground :background EditorBackground))
  (cursor  (:background Yellow))
  (region  (:background SelectionBackground))
  
  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))
  (font-lock-warning-face (:foreground Red :weight 'bold))
  (font-lock-keyword-face (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Yellow))
  (font-lock-type-face (:foreground Green))
  (font-lock-builtin-face (:foreground Blue))
  (font-lock-comment-face (:foreground CommentsForeground))
  (font-lock-string-face (:foreground Green))
  (font-lock-constant-face (:foreground PaleRed))
  (font-lock-variable-name-face (:foreground DeepYellow))

  (hl-line (:background ModeBarBackground))

  ;; Eshell definitions
  (eshell-prompt (:foreground Blue))
  (eshell-ls-backup (:foreground "gray50"))
  (eshell-ls-directory (:foreground "gold"))
  )
 )

(provide-theme 'bright-tungsten)
