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
  (secondary-selection (:extend t :background SelectionBackground))
  (mouse-drag-and-drop-region (:inherit 'region))

  ;; Not sure about these
  (highlight (:inherit 'region))
  (lazy-highlight (:inherit 'region))

  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))
  (mode-line-highlight (:box (:line-width 1 :color SelectionBackground :style 'released-button)))
  (mode-line-buffer-id (:weight 'bold))
  (mode-line-emphasis  (:weight 'bold))

  (fringe (:background ModeBarBackground))
  (vertical-border (:foreground ModeBarBackground))
  (hl-line (:background HighlightActiveBackground))
  (scroll-bar (:foreground EditorBackground :background ModeBarBackground))
  (line-number (:foreground LineNumberUnselected :background EditorBackground))
  (line-number-current-line (:foreground ModeBarForeground :background EditorBackgroundDarker))
  (header-line (:background EditorBackgroundDarker))
  (link (:foreground Cyan :underline t))
  (link-visited (:foreground Magenta :inherit 'link))
  (minibuffer-prompt (:foreground Cyan :weight 'bold))

  (escape-glyph (:foreground Cyan))
  (homoglyph (:foreground Cyan))
  (nobreak-hyphen (:foreground Cyan))
  (nobreak-space (:underline t :foreground Cyan))

  ;; Flat border.
  (border nil)
  (internal-border nil)
  (window-divider-last-pixel (:inherit 'window-divider))
  (window-divider-first-pixel (:inherit 'window-divider))
  (window-divider (:foreground ModeBarBackground))

  (success (:weight 'bold :foreground Green))
  (warning (:weight 'bold :foreground PaleOrange))
  (error (:weight 'bold :foreground Red))

  (trailing-whitespace (:background "red2"))
  
  (isearch (:background A-DiffFineBackground))
  (isearch-fail (:background "red4"))
  (query-replace (:inherit 'isearch))
  (match (:background B-DiffFineBackground))
  
  (font-lock-warning-face (:foreground Red :weight 'bold))
  (font-lock-keyword-face (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Blue))
  (font-lock-preprocessor-face (:inherit 'default))
  (font-lock-doc-face (:foreground CommentsForeground))
  (font-lock-type-face (:foreground Yellow))
  (font-lock-builtin-face (:foreground Blue))
  (font-lock-comment-face (:foreground CommentsForeground))
  (font-lock-comment-delimiter-face (:inherit 'font-lock-comment-face))
  (font-lock-string-face (:foreground Green))
  (font-lock-constant-face (:foreground PaleOrange))
  (font-lock-variable-name-face (:inherit 'default))

  ;; Slime definition
  (slime-repl-output-face (:foreground Highlight-Orange))
  (slime-repl-inputed-output-face (:foreground Green))

  ;; Eshell definitions
  (eshell-prompt (:foreground Blue))
  (eshell-ls-backup (:foreground CommentsForeground))
  (eshell-ls-directory (:foreground Yellow :weight 'bold))
  (eshell-ls-symlink (:foreground Cyan))
  (eshell-ls-executable (:foreground Green))
  (eshell-ls-readonly (:foreground PaleOrange))

  ;; Ediff
  (ediff-even-diff-A (:background DiffInactiveBackground))
  (ediff-even-diff-B (:background DiffInactiveBackground))
  (ediff-even-diff-C (:background DiffInactiveBackground))
  (ediff-odd-diff-A  (:background DiffInactiveBackground))
  (ediff-odd-diff-B  (:background DiffInactiveBackground))
  (ediff-odd-diff-C  (:background DiffInactiveBackground))
  (ediff-current-diff-A (:background A-DiffCurrentBackground))
  (ediff-fine-diff-A    (:background A-DiffFineBackground))
  (ediff-current-diff-B (:background B-DiffCurrentBackground))
  (ediff-fine-diff-B    (:background B-DiffFineBackground))
  (ediff-current-diff-C (:background C-DiffCurrentBackground))
  (ediff-fine-diff-C    (:background C-DiffFineBackground))

  (diff-refine-added (:background Add-DiffFineBackground :inherit 'diff-refine-changed))
  (diff-refine-removed (:background A-DiffFineBackground :inherit 'diff-refine-changed))
  (diff-refine-changed (:background  B-DiffFineBackground))
  (diff-nonexistent (:inherit 'diff-file-header))
  (diff-context (:extend t))
  (diff-function (:inherit 'diff-header))
  (diff-indicator-changed (:foreground DeepYellow :inherit 'diff-changed))
  (diff-indicator-added (:background Add-DiffFineBackground :inherit 'diff-added))
  (diff-indicator-removed (:background A-DiffFineBackground :inherit 'diff-removed))
  (diff-added (:extend t :background Add-DiffCurrentBackground))
  (diff-removed (:extend t :background A-DiffCurrentBackground))
  (diff-hunk-header (:inherit 'diff-header))
  (diff-index (:inherit 'diff-file-header))
  (diff-file-header  (:extend t :foreground White :background "grey35"))
  (diff-header (:extend t :foreground PaleBlue :background "grey20"))
  
  ;; Ido-mode
  ;; -> ido-indicator (not done)
  (ido-only-match (:foreground Green))
  (ido-subdir (:foreground Yellow :weight 'bold))

  ;; Magit mode
  (magit-keyword (:foreground Magenta))
  ;;(magit-section-highlight (:foreground Yellow :))
  (magit-section-heading (:foreground Yellow))
  (magit-branch-local (:foreground Cyan))
  (magit-head (:inherit 'magit-branch-local))
  (magit-branch-remote (:foreground Green))
  (magit-dimmed (:foreground CommentsForeground))

  (magit-blame-heading (:extend t :foreground PaleBlue :background "grey20"))
  (magit-blame-dimmed  (:inherit 'magit-dimmed))
  (magit-blame-margin  (:inherit 'magit-blame-heading))
  (magit-blame-highlight (:extend t :foreground White :background "grey35"))

  (magit-cherry-equivalent (:foreground Magenta))
  (magit-cherry-unmatched (:foreground Cyan))

  (magit-diff-whitespace-warning (:inherit 'trailing-whitespace))
  (magit-diff-context-highlight (:foreground EditorForeground :background "grey15"))
  (magit-diff-context (:inherit 'default))
  (magit-diff-their-highlight (:inherit 'magit-diff-added-highlight))
  (magit-diff-base-highlight (:extend t :background C-DiffFineBackground))
  (magit-diff-our-highlight (:inherit 'magit-diff-removed-highlight))
  (magit-diff-removed-highlight (:extend t :background A-DiffFineBackground))
  (magit-diff-added-highlight (:extend t :background Add-DiffFineBackground))
  (magit-diff-their (:inherit 'magit-diff-added))
  (magit-diff-base (:extend t :background C-DiffCurrentBackground))
  (magit-diff-our (:inherit 'magit-diff-removed))
  (magit-diff-removed (:extend t :background A-DiffCurrentBackground))
  (magit-diff-added (:extend t :background Add-DiffCurrentBackground))

  (magit-diff-hunk-heading (:inherit 'magit-blame-heading))
  (magit-diff-conflict-heading (:inherit 'magit-diff-hunk-heading))
  (magit-diff-lines-boundary  (:extend t :inherit 'magit-diff-lines-heading))
  (magit-diff-lines-heading (:extend t :background B-DiffFineBackground :foreground White))
  (magit-diff-revision-summary-highlight (:inherit 'magit-blame-highlight))
  (magit-diff-revision-summary (:inherit 'magit-diff-hunk-heading))
  (magit-diff-hunk-region (:extend t :inherit 'bold))
  (magit-diff-hunk-heading-selection (:inherit 'magit-diff-lines-heading))
  (magit-diff-hunk-heading-highlight (:inherit 'magit-blame-highlight))
  (magit-diff-file-heading-highlight (:foreground White :inherit 'magit-diff-hunk-heading))
  (magit-diff-file-heading-selection (:slant 'italic :foreground White
					     :inherit 'magit-diff-file-heading))
  (magit-diff-file-heading (:weight 'bold :extend t))

  (magit-diffstat-removed (:foreground Red))
  (magit-diffstat-added (:foreground Green))
  
  (magit-process-ng (:foreground Red :inherit 'magit-section-heading))
  (magit-process-ok (:foreground Green :inherit 'magit-section-heading))
  (magit-mode-line-process-error (:inherit 'error))
  (magit-mode-line-process (:inherit 'mode-line-emphasis))

  (magit-reflog-other (:foreground Cyan ))
  (magit-reflog-remote (:foreground Cyan ))
  (magit-reflog-cherry-pick (:foreground Green ))
  (magit-reflog-rebase (:foreground Magenta))
  (magit-reflog-reset  (:foreground Red ))
  (magit-reflog-checkout (:foreground Blue))
  (magit-reflog-merge (:foreground Green ))
  (magit-reflog-amend (:foreground Magenta ))
  (magit-reflog-commit (:foreground Green ))

  (magit-bisect-bad (:foreground "IndianRed"))
  (magit-bisect-skip (:foreground DeepYellow))
  (magit-bisect-good (:foreground Green)) ;;browngreen
  (magit-sequence-exec (:inherit 'magit-hash))
  (magit-sequence-onto (:inherit 'magit-sequence-done))
  (magit-sequence-done (:inherit 'magit-hash))
  (magit-sequence-drop (:foreground "IndianRed"))
  (magit-sequence-head (:foreground Cyan))
  (magit-sequence-part (:foreground DeepYellow))
  (magit-sequence-stop (:foreground Green))
  
  ;;(magit-section-child-count nil)
  ;;(magit-section-heading-selection (:extend t :foreground ModeBarBackground))
  (magit-section-secondary-heading (:weight 'bold :extend t))

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
  (tree-sitter-hl-face:method (:foreground Blue))
  (tree-sitter-hl-face:method.call (:foreground Blue))
  (tree-sitter-hl-face:function (:foreground Blue))
  (tree-sitter-hl-face:function.call (:foreground Blue))
  (tree-sitter-hl-face:function.macro (:foreground Blue))
  (tree-sitter-hl-face:variable.parameter (:foreground Red))
  (tree-sitter-hl-face:variable.builtin (:foreground Red))
  (tree-sitter-hl-face:variable (:inherit 'default))
  (tree-sitter-hl-face:operator (:foreground Magenta))
  (tree-sitter-hl-face:number (:foreground PaleOrange))
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
