(require 'autothemer)

(autothemer-deftheme
 material-darker-high-contrast
 "A port of the VSCode theme 'Community Material Themes - Darker High Contrast'"

 ((((class color) (min-colors #xffffff)))

  ;; Element colors.
  (Caret                "#FFCC00")
  (EditorBackground     "#212121")
  (EditorForeground     "#EEFFFF")
  (CommentsForeground   "#4A4A4A")
  (SelectionBackground  "#303030") ;; Original was #717CB450
  (LineNumbers     "#424242")
  ;;(ModeBarBackground    "#090B10")
  (ModeBarBackground    "#1A1A1A")
  (ModeBarForeground    "#848484")
  
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

 ;; Insert global-configuration.txt here

 ;; End of global-configuration.txt
 )

(provide-theme 'material-darker-high-contrast)
