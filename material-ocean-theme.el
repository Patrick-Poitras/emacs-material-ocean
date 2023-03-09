;;; material-ocean-theme.el --- Material themes: ocean -*- lexical-binding : t -*-
;; URL: https://github.com/Patrick-Poitras/emacs-material-ocean
;; Version: 1.0
;; Package-Requires: ((emacs "26.1"))
(require 'material-ocean-themes)

;;; Commentary:
;; Material theme ocean -- regular.

;;; Code:
(material-ocean-themes-deftheme
  material-ocean
  "A port of the VSCode theme 'Community Material Themes - Ocean'"
  
  ((((class color) (min-colors #xffffff)))

   ;; element colors.
   (Caret                  "#FFCC00")
   (EditorBackground       "#0F111A")
   (EditorBackgroundDarker "#090B10")
   (EditorForeground       "#A6ACCD")
   (CommentsForeground     "#576080")
   (SelectionBackground    "#333955")
   (ModeBarBackground      "#000000")
   (ModeBarForeground      "#4B526D")
   
   (HighlightActiveBackground "#090B10")
   (LineNumberUnselected      "#252836")
   
   (ScrollBarForeground "#2B2C31")
   (ScrollBarBackground "#131315")

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

   (DiffInactiveBackground    "#0E152D")
   (A-DiffCurrentBackground   "#3F0E15")
   (A-DiffFineBackground      "#581720")
   (B-DiffCurrentBackground   "#153B3F")
   (B-DiffFineBackground      "#23494C")
   (C-DiffCurrentBackground   "#423D0F")
   (C-DiffFineBackground      "#5C5618")
   (Add-DiffCurrentBackground "#17380C")
   (Add-DiffFineBackground    "#224E14")))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (add-to-list 'load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'material-ocean)
;;; material-ocean-theme.el ends here
