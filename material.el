;;; -*- lexical-binding : t -*-
(require 'autothemer)

(defmacro deftheme-material (name description palette &rest body)
  `(autothemer-deftheme ,name
			,description
			,palette
;; Assign colors to faces.
 ((default (:foreground EditorForeground :background EditorBackground))
  (button  (:foreground Cyan :underline t))
  (cursor  (:background Caret))
  (region  (:background SelectionBackground))
  (cua-rectangle (:background SelectionBackground))

  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))
  (mode-line-highlight (:box (:line-width 1 :color SelectionBackground :style 'released-button)))

  (fringe (:background ModeBarBackground))
  (vertical-border (:foreground ModeBarBackground))
  (hl-line (:background HighlightActiveBackground))
  (scroll-bar (:foreground EditorBackground :background ModeBarBackground))
  (line-number (:foreground LineNumberUnselected :background EditorBackground))
  (line-number-current-line (:foreground ModeBarForeground :background EditorBackgroundDarker))
  (header-line (:background EditorBackgroundDarker))
  (link (:foreground Cyan :underline t))
  (minibuffer-prompt (:foreground Cyan :weight 'bold))
  
  (font-lock-warning-face (:foreground Red :weight 'bold))
  (font-lock-keyword-face (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Blue))
  (font-lock-preprocessor-face (:inherit 'default))
  (font-lock-doc-face (:foreground CommentsForeground))
  (font-lock-type-face (:foreground Yellow))
  (font-lock-builtin-face (:foreground Blue))
  (font-lock-comment-face (:foreground CommentsForeground))
  (font-lock-string-face (:foreground Green))
  (font-lock-constant-face (:foreground PaleOrange))
  (font-lock-variable-name-face (:inherit 'default))

  ;; Slime definitions
  (slime-repl-output-face (:foreground Highlight-Orange))
  (slime-repl-inputed-output-face (:foreground Green))

  ;; Eshell definitions
  (eshell-prompt (:foreground Blue))
  (eshell-ls-backup (:foreground CommentsForeground))
  (eshell-ls-directory (:foreground Yellow :weight 'bold))
  (eshell-ls-symlink (:foreground Cyan))
  (eshell-ls-executable (:foreground Green))
  (eshell-ls-readonly (:foreground PaleOrange))

  ;; Ido-mode
  ;; -> ido-indicator (not done)
  (ido-only-match (:foreground Green))
  (ido-subdir (:foreground Yellow :weight 'bold))

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
  (tree-sitter-hl-face:function.call (:foreground Blue))
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
  (js2-function-call (:inherit 'tree-sitter-hl-face:function.call)))
 ,@body))
