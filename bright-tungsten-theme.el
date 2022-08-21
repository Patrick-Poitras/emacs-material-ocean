(require 'autothemer)

(autothemer-deftheme
 bright-tungsten
 "A theme mostly inspired by the VSCode theme 'Community Material Themes -- Ocean High Contrast'"

 ((((class color) (min-colors #xffffff)))

  ;; Color palette definition.

  ;; Element colors.
  (EditorBackground "#0F111A")
  ;;(EditorForeground "#8F93A2")
  (EditorForeground "gray80")
  (SelectionBackground "#80CBC4")
  (TabBarBackground    "#090B10")
  (TabBarForeground    "#4B526D")

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

  (DeepYellow "#FAA452")
  (PaleRed "#FF7777")
  (PaleOrange "#F78C6C")

  ;;(magenta "#FF00FF")
  )

 ;; Assign colors to faces.
 ((default (:foreground EditorForeground :background EditorBackground)) ;; Make fg brighter?
  (cursor  (:background Yellow))
  (mode-line (:foreground Highlight-Gray :background TabBarBackground
			  ;;:box Highlight-Orange
			  ))
  (mode-line-inactive (:foreground TabBarForeground :background TabBarBackground))
  (font-lock-warning-face (:foreground Red :weight 'bold))
  (font-lock-keyword-face (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Yellow))
  (font-lock-type-face (:foreground Green))
  (font-lock-builtin-face (:foreground Blue))
  (font-lock-comment-face (:foreground "gray55"))
  (font-lock-string-face (:foreground Green))
  (font-lock-constant-face (:foreground PaleRed))
  (font-lock-variable-name-face (:foreground DeepYellow))
  )
 )
 
(provide-theme 'bright-tungsten)

;font-lock-builtin-face
;font-lock-comment-delimiter-face 	font-lock-comment-face
;font-lock-constant-face 	font-lock-doc-face
;font-lock-doc-markup-face 	font-lock-function-name-face
;font-lock-keyword-face 	font-lock-negation-char-face
;font-lock-preprocessor-face 	font-lock-regexp-grouping-backslash
;font-lock-regexp-grouping-construct 	font-lock-string-face
;font-lock-type-face 	font-lock-variable-name-face
