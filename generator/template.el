(require 'autothemer)

(autothemer-deftheme
 material-ocean-high-contrast

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

 ;; Insert global-configuration.txt here

 )

(provide-theme 'material-ocean-high-contrast)
