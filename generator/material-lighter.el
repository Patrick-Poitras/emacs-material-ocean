(require 'autothemer)

(autothemer-deftheme
 material-lighter
 "A port of the VSCode theme 'Community Material Themes - Lighter'"

 ((((class color) (min-colors #xffffff)))

  ;; Element colors.
  (Caret                "#272727")
  (EditorBackground     "#FAFAFA")
  ;;(EditorBackground     "#090B10")
  (EditorForeground     "#90A4AE")
  ;;(EditorForeground      "gray70")
  (CommentsForeground    "545454")
  (SelectionBackground  "#333955") ;; Original was #717CB450
  (LineNumbers     "#E53935")
  ;;(ModeBarBackground    "#090B10")
  (ModeBarBackground    "#FAFAFA")
  (ModeBarForeground    "#7E939E")
  
  (scrollbarforeground "#283A3A") ;;#8F93A230
  (ScrollBarBackground "#212121") ;;#8F93A220

  (Highlight-Orange "DarkOrange2")
  (Highlight-Gray   "#5E737E")
  
  ;; Text colors.
  (White         "#FFFFFF")
  (Black         "#000000")
  (Blue          "#6182B8")
  (PaleBlue      "#8796B0")
  (Cyan          "#39ADB5")
  (Green         "#91B859")
  (Magenta       "#945EB8")
  (Red           "#E53935")
  (Yellow        "#E2931D")
  (BrightBlack   "#464B5D")

  (DeepYellow    "#FAA452")
  (PaleRed       "#FF5370")
  (PaleOrange    "#F76D47")

  (debug "#FF00FF") ;; ugly color for debugging.
  )

 ;; Insert global-configuration.txt here

 ;; End of global-configuration.txt
 )

(provide-theme 'material-lighter)
