;;; material-ocean-themes.el --- Blue material themes for emacs -*- lexical-binding : t -*-
;; URL: https://github.com/Patrick-Poitras/emacs-material-ocean
;; Version: 1.0
;; Package-Requires: ((emacs "26.1"))

(require 'autothemer)

;;; Commentary:
;; This is a port of the VS Code Material Community Edition
;; themes "Ocean" and "Palenight"

;;; Code:
(defmacro material-ocean-themes-deftheme (name description palette &rest body)
  "Wrapper macro for `autothemer-deftheme'.
How it works:
Allows for the creation of a theme, with a NAME and DESCRIPTION.
The BODY assigns the PALETTE to the faces."
  `(autothemer-deftheme ,name
			,description
			,palette
;; Assign colors to faces.
 ((default (:foreground EditorForeground :background EditorBackground))
  (button  (:foreground Cyan :underline t))
  (cursor  (:background Caret))

  (cua-rectangle (:background SelectionBackground))
  (highlight (:inherit 'region))
  (lazy-highlight (:inherit 'region))
  (mouse-drag-and-drop-region (:inherit 'region))
  (region  (:background SelectionBackground :distant-foreground "#697cbf"))
  (secondary-selection (:extend t :background SelectionBackground))

  (mode-line (:foreground Highlight-Gray :background ModeBarBackground))
  (mode-line-inactive (:foreground ModeBarForeground :background ModeBarBackground))
  (mode-line-highlight (:box (:line-width 1 :color SelectionBackground :style 'released-button)))
  (mode-line-buffer-id (:weight 'bold))
  (mode-line-emphasis  (:weight 'bold))

  (fringe
   (:background ModeBarBackground))
  (header-line
   (:background EditorBackgroundDarker))
  (hl-line
   (:background HighlightActiveBackground))
  (line-number
   (:foreground LineNumberUnselected :background EditorBackground))
  (line-number-current-line
   (:foreground ModeBarForeground :background EditorBackgroundDarker))
  (link
   (:foreground Cyan :underline t))
  (link-visited
   (:foreground Magenta :underline t))
  (minibuffer-prompt
   (:foreground Cyan :weight 'bold))
  (scroll-bar
   (:foreground EditorBackground :background ModeBarBackground))
  (vertical-border
   (:foreground ModeBarBackground))

  (escape-glyph   (:foreground Cyan))
  (homoglyph      (:foreground Cyan))
  (nobreak-hyphen (:foreground Cyan))
  (nobreak-space  (:underline t :foreground Cyan))

  (hi-blue  (:foreground Black :background Blue))
  (hi-green (:foreground Black :background Green))
  (hi-pink  (:foreground Black :background "IndianRed1"))

  ;; Flat border.
  (border nil)
  (internal-border nil)
  (window-divider-last-pixel  (:inherit 'window-divider))
  (window-divider-first-pixel (:inherit 'window-divider))
  (window-divider             (:foreground ModeBarBackground))

  (success (:weight 'bold :foreground Green))
  (warning (:weight 'bold :foreground Highlight-Orange))
  (error   (:weight 'bold :foreground Red))

  (trailing-whitespace (:background "red2"))

  (isearch       (:background A-DiffFineBackground))
  (isearch-fail  (:background "red4"))
  (query-replace (:inherit 'isearch))
  (match         (:background B-DiffFineBackground))

  (ansi-color-black (:foreground Black))
  (ansi-color-red (:foreground Red))
  (ansi-color-green (:foreground Green))
  (ansi-color-yellow (:foreground Yellow))
  (ansi-color-blue (:foreground Blue))
  (ansi-color-magenta (:foreground Magenta))
  (ansi-color-cyan (:foreground Cyan))
  (ansi-color-white (:foreground White))
  (ansi-color-bright-black (:foreground BrightBlack))
  (ansi-color-bright-red (:foreground Red))
  (ansi-color-bright-green (:foreground Green))
  (ansi-color-bright-yellow (:foreground Caret))
  (ansi-color-bright-blue (:foreground Blue))
  (ansi-color-bright-magenta (:foreground Magenta))
  (ansi-color-bright-cyan (:foreground Cyan))
  (ansi-color-bright-white (:foreground White))

  (font-lock-warning-face       (:foreground Red :weight 'bold))
  (font-lock-keyword-face       (:foreground Cyan :slant 'italic :weight 'bold))
  (font-lock-function-name-face (:foreground Blue))
  (font-lock-preprocessor-face  (:inherit 'default))
  (font-lock-doc-face           (:foreground CommentsForeground))
  (font-lock-type-face          (:foreground Yellow))
  (font-lock-builtin-face       (:foreground Blue))
  (font-lock-comment-face       (:foreground CommentsForeground))
  (font-lock-comment-delimiter-face (:inherit 'font-lock-comment-face))
  (font-lock-string-face        (:foreground Green))
  (font-lock-constant-face      (:foreground PaleOrange))
  (font-lock-variable-name-face (:inherit 'default))

  (which-func (:foreground Blue))

;;;;;; Mode-specific
  (comint-highlight-input (:weight 'bold))
  (comint-highlight-prompt (:inherit 'eshell-prompt))
  
  (compilation-error          (:inherit 'error))
  (compilation-warning        (:inherit 'warning))
  (compilation-info           (:inherit 'success))
  (compilation-mode-line-fail (:inherit 'compilation-error))
  (compilation-mode-line-run  (:inherit 'compilation-warning))
  (compilation-mode-line-exit (:inherit 'compilation-info))
  (compilation-line-number    (:inherit 'font-lock-keyword-face))
  (compilation-column-number  (:inherit 'font-lock-doc-face))

  ;; Eshell definitions
  (eshell-ls-archive    (:foreground Magenta))
  (eshell-ls-backup     (:foreground CommentsForeground))
  (eshell-ls-directory  (:foreground Yellow :weight 'bold))
  (eshell-ls-executable (:foreground Green))
  (eshell-ls-missing    (:foreground Red))
  (eshell-ls-readonly   (:foreground PaleOrange))
  (eshell-ls-special    (:foreground Red))
  (eshell-ls-symlink    (:foreground Cyan))
  (eshell-prompt        (:foreground Blue))

  ;; Ediff
  (ediff-current-diff-A (:background A-DiffCurrentBackground))
  (ediff-current-diff-B (:background B-DiffCurrentBackground))
  (ediff-current-diff-C (:background C-DiffCurrentBackground))
  (ediff-even-diff-A    (:background DiffInactiveBackground))
  (ediff-even-diff-B    (:background DiffInactiveBackground))
  (ediff-even-diff-C    (:background DiffInactiveBackground))
  (ediff-fine-diff-A    (:background A-DiffFineBackground))
  (ediff-fine-diff-B    (:background B-DiffFineBackground))
  (ediff-fine-diff-C    (:background C-DiffFineBackground))
  (ediff-odd-diff-A     (:background DiffInactiveBackground))
  (ediff-odd-diff-B     (:background DiffInactiveBackground))
  (ediff-odd-diff-C     (:background DiffInactiveBackground))

  (diff-added             (:background Add-DiffCurrentBackground))
  (diff-context           (:extend t))
  (diff-file-header       (:extend t :foreground White :background "grey35"))
  (diff-function          (:inherit 'diff-header))
  (diff-header            (:extend t :foreground PaleBlue :background "grey20"))
  (diff-hunk-header       (:inherit 'diff-header))
  (diff-index             (:inherit 'diff-file-header))
  (diff-indicator-added   (:background Add-DiffFineBackground :extend t))
  (diff-indicator-changed (:foreground DeepYellow))
  (diff-indicator-removed (:background A-DiffFineBackground :extend t))
  (diff-nonexistent       (:inherit 'diff-file-header))
  (diff-refine-added      (:background Add-DiffFineBackground))
  (diff-refine-changed    (:background B-DiffFineBackground))
  (diff-refine-removed    (:background A-DiffFineBackground))
  (diff-removed           (:extend t :background A-DiffCurrentBackground))

  ;; Eglot
  (eglot-mode-line
   (:foreground Highlight-Orange :weight 'bold))
  (eglot-diagnostic-tag-unnecessary-face
   (:underline (:style 'wave :color "gray20")))

  ;; Flymake
  (flymake-error   (:underline (:style 'wave :color PaleRed)))
  (flymake-warning (:underline (:style 'wave :color Magenta)))
  (flymake-note    (:underline (:style 'wave :color Yellow)))
 
  ;; Ido-mode
  (ido-only-match (:foreground Green))
  (ido-subdir     (:foreground Yellow :weight 'bold))

  ;; Parts of js2-mode, still in use during tree-sitter
  (js2-function-param (:foreground Red))
  (js2-function-call  (:foreground Blue))

  ;; Magit-mode
  (magit-filename       (:weight 'normal))
  (magit-hash           (:foreground CommentsForeground))
  (magit-keyword-squash (:foreground Magenta))
  (magit-sequence-pick  (:inherit 'default))
  (magit-dimmed         (:foreground CommentsForeground))
  (magit-head           (:inherit 'magit-branch-local))
  (magit-keyword        (:foreground Magenta))
  (magit-tag            (:foreground Yellow))

  ;; Magit-branch
  (magit-branch-current     (:box 1 :foreground Cyan))
  (magit-branch-local       (:foreground Cyan))
  (magit-branch-remote      (:foreground Green))
  (magit-branch-remote-head (:box 1 :foreground Green))
  (magit-branch-upstream    (:slant 'italic))
  (magit-branch-warning     (:inherit 'warning))
  
  (magit-bisect-bad    (:foreground "IndianRed"))
  (magit-bisect-good   (:foreground Green))
  (magit-bisect-skip   (:foreground Yellow))
  
  (magit-blame-dimmed    (:inherit 'magit-dimmed))
  (magit-blame-heading   (:extend t :foreground PaleBlue :background "grey20"))
  (magit-blame-highlight (:extend t :foreground White :background "grey35"))
  (magit-blame-margin    (:inherit 'magit-blame-heading))
  (magit-blame-date       nil)
  (magit-blame-hash       nil)
  (magit-blame-name       nil)
  (magit-blame-summary    nil)
  
  (magit-cherry-equivalent (:foreground Magenta))
  (magit-cherry-unmatched  (:foreground Cyan))

  (magit-diff-added
   (:extend t :background Add-DiffCurrentBackground))
  (magit-diff-added-highlight
   (:extend t :background Add-DiffFineBackground))
  (magit-diff-base
   (:extend t :background C-DiffCurrentBackground))
  (magit-diff-base-highlight
   (:extend t :background C-DiffFineBackground))
  (magit-diff-conflict-heading
   (:inherit 'magit-diff-hunk-heading))
  (magit-diff-context
   (:inherit 'default))
  (magit-diff-context-highlight
   (:foreground EditorForeground :background "grey15"))
  (magit-diff-file-heading
   (:weight 'bold :extend t))
  (magit-diff-file-heading-highlight
   (:foreground Highlight-Gray :extend t :background "grey20"))
  (magit-diff-file-heading-selection
   (:slant 'italic :foreground White :weight 'bold :extend t))
  (magit-diff-hunk-heading
   (:inherit 'magit-blame-heading))
  (magit-diff-hunk-heading-highlight
   (:inherit 'magit-blame-highlight))
  (magit-diff-hunk-heading-selection
   (:inherit 'magit-diff-lines-heading))
  (magit-diff-hunk-region
   (:extend t :weight 'bold))
  (magit-diff-lines-boundary
   (:inherit 'magit-diff-lines-heading))
  (magit-diff-lines-heading
   (:extend t :background B-DiffFineBackground :foreground White))
  (magit-diff-our
   (:inherit 'magit-diff-removed))
  (magit-diff-our-highlight
   (:inherit 'magit-diff-removed-highlight))
  (magit-diff-removed
   (:extend t :background A-DiffCurrentBackground))
  (magit-diff-removed-highlight
   (:extend t :background A-DiffFineBackground))
  (magit-diff-revision-summary
   (:inherit 'magit-diff-hunk-heading))
  (magit-diff-revision-summary-highlight
   (:inherit 'magit-blame-highlight))
  (magit-diff-their
   (:inherit 'magit-diff-added))
  (magit-diff-their-highlight
   (:inherit 'magit-diff-added-highlight))
  (magit-diff-whitespace-warning
   (:inherit 'trailing-whitespace))

  (magit-diffstat-removed (:foreground Red))
  (magit-diffstat-added (:foreground Green))

  (magit-header-line            (:inherit 'magit-section-heading))
  (magit-header-line-key        (:inherit 'font-lock-builtin-face))
  (magit-header-line-log-select (:inherit 'bold))

  (magit-log-author (:foreground Magenta))
  (magit-log-date   (:weight 'normal :slant 'normal :foreground PaleBlue))
  (magit-log-graph  (:foreground PaleBlue))
  
  (magit-mode-line-process       (:inherit 'mode-line-emphasis))
  (magit-mode-line-process-error (:inherit 'error))
  
  (magit-process-ng (:foreground Red))
  (magit-process-ok (:foreground Green))

  (magit-reflog-amend       (:foreground Magenta))
  (magit-reflog-checkout    (:foreground Blue))
  (magit-reflog-cherry-pick (:foreground Green))
  (magit-reflog-commit      (:foreground Green))
  (magit-reflog-merge       (:foreground Green))
  (magit-reflog-other       (:foreground Cyan))
  (magit-reflog-rebase      (:foreground Magenta))
  (magit-reflog-remote      (:foreground Cyan))
  (magit-reflog-reset       (:foreground Red))

  (magit-refname            (:foreground White))
  (magit-refname-pullreq    (:inherit 'magit-refname))
  (magit-refname-stash      (:inherit 'magit-refname))
  (magit-refname-wip        (:inherit 'magit-refname))

  (magit-section-heading           (:foreground Yellow))
  (magit-section-secondary-heading (:weight 'bold :extend t))

  (magit-sequence-exec (:inherit 'magit-hash))
  (magit-sequence-onto (:inherit 'magit-sequence-done))
  (magit-sequence-done (:inherit 'magit-hash))
  (magit-sequence-drop (:foreground "IndianRed"))
  (magit-sequence-head (:foreground Cyan))
  (magit-sequence-part (:foreground Yellow))
  (magit-sequence-stop (:foreground Green))

  (magit-signature-bad         (:foreground "Red" :weight 'bold))
  (magit-signature-error       (:foreground "Red"))
  (magit-signature-expired     (:inherit 'warning))
  (magit-signature-expired-key (:inherit 'magit-signature-expired))
  (magit-signature-good        (:foreground Green))
  (magit-signature-revoked     (:foreground "Red"))
  (magit-signature-untrusted   (:foreground Magenta))

;;;; Org mode
  (org-level-1       (:foreground Blue :weight 'bold))
  (org-level-2       (:foreground Yellow :weight 'bold))
  (org-level-3       (:foreground Red :weight 'bold))
  (org-level-4       (:foreground Magenta :weight 'bold))
  (org-level-5       (:foreground Cyan :weight 'bold))
  (org-level-6       (:foreground PaleOrange :weight 'bold))
  (org-level-7       (:foreground Green :weight 'bold))
  (org-level-8       (:foreground EditorForeground :slant 'italic :weight 'bold))
  (org-block         (:inherit 'default))
  (org-todo          (:foreground PaleOrange :weight 'bold :underline t))
  (org-done          (:foreground Green :weight 'bold :underline t))
  (org-headline-done (:inherit 'org-done :underline nil))
  (org-headline-todo (:inherit 'org-todo))

  (org-agenda-calendar-event    (:inherit 'default))
  (org-agenda-calendar-sexp     (:inherit 'default))
  (org-agenda-clocking          (:inherit 'secondary-selection))
  (org-agenda-column-dateline   (:inherit 'org-column))
  (org-agenda-current-time      (:inherit 'org-time-grid))
  (org-agenda-date              (:foreground Cyan))
  (org-agenda-date-today        (:weight 'bold :slant 'italic :foreground Cyan))
  (org-agenda-date-weekend      (:inherit 'org-agenda-date))
  (org-agenda-diary             (:inherit 'default))
  (org-agenda-dimmed-todo-face  (:foreground CommentsForeground))
  (org-agenda-done              (:foreground Green))
  (org-agenda-filter-category   (:inherit 'mode-line))
  (org-agenda-filter-effort     (:inherit 'mode-line))
  (org-agenda-filter-regexp     (:inherit 'mode-line))
  (org-agenda-filter-tags       (:inherit 'mode-line))
  (org-agenda-restriction-lock  (:foreground PaleBlue :background "grey20"))
  (org-agenda-structure         (:foreground Cyan))
  
  (org-archived                  (:inherit 'shadow))
  (org-block-begin-line          (:extend t :foreground CommentsForeground))
  (org-block-end-line            (:inherit 'org-block-begin-line))
  (org-checkbox                  (:inherit 'bold))
  (org-checkbox-statistics-done  (:inherit 'org-done))
  (org-checkbox-statistics-todo  (:inherit 'org-todo))
  (org-clock-overlay             (:background B-DiffFineBackground :foreground White))
  (org-code                      (:inherit 'shadow))
  (org-column                    (:background "grey35"))
  (org-column-title              (:background "grey35" :weight 'bold :underline t))
  (org-date                      (:underline t :foreground Cyan))
  (org-date-selected             (:inverse-video t :underline t :foreground Cyan))
  (org-document-info             (:foreground Cyan))
  (org-document-info-keyword     (:inherit 'shadow))
  (org-document-title            (:weight 'bold :foreground Cyan))
  (org-drawer                    (:foreground Cyan))
  (org-ellipsis                  (:underline t :foreground Yellow))
  (org-footnote                  (:underline t :foreground Cyan))
  (org-formula                   (:foreground DeepYellow))
  (org-hide                      (:foreground EditorBackground))
  (org-latex-and-related         (:foreground PaleOrange))
  (org-link                      (:inherit 'link))
  (org-list-dt                   (:weight 'bold))
  (org-macro                     (:inherit 'org-latex-and-related))
  (org-meta-line                 (:inherit 'font-lock-comment-face))
  (org-mode-line-clock           (:inherit 'mode-line))
  (org-mode-line-clock-overrun   (:background Red :foreground White))
  (org-priority                  (:inherit 'font-lock-keyword-face))
  (org-property-value             nil)
  (org-quote                     (:inherit 'org-block))
  (org-scheduled                 (:foreground Green))
  (org-scheduled-previously      (:foreground Highlight-Orange))
  (org-scheduled-today           (:foreground Green))
  (org-sexp-date                 (:foreground Cyan))
  (org-special-keyword           (:inherit 'font-lock-keyword-face))
  (org-table                     (:foreground Cyan))
  (org-table-header              (:foreground Black :background "LightGray"))
  (org-tag                       (:weight 'bold))
  (org-tag-group                 (:inherit 'org-tag))
  (org-target                    (:underline t))
  (org-time-grid                 (:foreground Yellow))
  (org-upcoming-deadline         (:foreground Highlight-Orange))
  (org-upcoming-distant-deadline (:inherit 'org-default))
  (org-verbatim                  (:inherit 'shadow))
  (org-verse                     (:inherit 'org-block))
  (org-warning                   (:inherit 'font-lock-warning-face))

  (outline-1 (:foreground Blue))
  (outline-2 (:foreground EditorForeground))
  (outline-3 (:foreground Cyan))
  (outline-4 (:foreground Magenta))
  (outline-5 (:foreground Yellow))
  (outline-6 (:foreground Red))
  (outline-7 (:foreground Green))
  (outline-8 (:foreground PaleOrange))

;;;;Rustic
  (rust-unsafe                   (:inherit 'font-lock-warning-face))
  (rust-question-mark            (:weight 'bold :foreground Blue))
  (rust-ampersand-face           (:foreground Magenta))
  (rust-builtin-formatting-macro (:foreground Blue))
  (rust-string-interpolation     (:slant 'italic :foreground Cyan))
  
;;;;Slime/SLDB
  (sldb-frame-label-face (:foreground BrightBlack :background EditorBackground))
  (sldb-restart-number-face         (:foreground Cyan))
  (sldb-restart-type-face           (:foreground PaleOrange))
  (sldb-restartable-frame-line-face (:foreground Blue))
  (sldb-section-face                (:slant 'italic :foreground Magenta))
  (slime-repl-input-face            (:inherit 'default))
  (slime-repl-inputed-output-face   (:foreground Green))
  (slime-repl-output-face           (:foreground PaleOrange :slant 'italic))
  (slime-repl-output-mouseover-face (:underline t :foreground Green))
  (slime-repl-prompt-face           (:foreground Cyan :weight 'normal))
  (slime-repl-result-face           (:foreground Blue))

  (slime-note-face          (:underline Yellow))
  (slime-style-warning-face (:underline Caret))
  (slime-warning-face       (:underline Highlight-Orange))
  (slime-error-face         (:underline "red"))

  (slime-inspector-type-face     (:inherit 'font-lock-type-face))
  (slime-inspector-action-face   (:foreground Cyan))
  (slime-inspector-value-face    (:inherit 'font-lock-builtin-face))
  (slime-inspector-label-face    (:foreground Magenta))
  (slime-inspector-topline-face   nil)
  (slime-apropos-label           (:inherit 'italic))
  (slime-apropos-symbol          (:inherit 'bold))
  (slime-highlight-face          (:underline nil :background SelectionBackground))
  (slime-reader-conditional-face (:inherit 'font-lock-comment-face))

;;;; Sly
  (sly-action-face    (:foreground Green))
  (sly-apropos-label  (:inherit 'italic))
  (sly-apropos-symbol (:inherit 'sly-part-button-face))
  
  (sly-db-catch-tag-face                  nil)
  (sly-db-condition-face                 (:inherit 'error))
  (sly-db-frame-label-face               (:foreground Cyan))
  (sly-db-frame-line-face                 nil)
  (sly-db-local-name-face                 nil)
  (sly-db-non-restartable-frame-line-face nil)
  (sly-db-restart-face                    nil)
  (sly-db-restart-number-face            (:foreground Cyan))
  (sly-db-restartable-frame-line-face    (:foreground Blue))
  (sly-db-section-face                   (:foreground Magenta :slant 'italic))
  (sly-db-topline-face                    nil)
  
  (sly-error-face (:underline Red))
  (sly-mode-line  (:weight 'bold :foreground PaleOrange))
  
  (sly-mrepl-note-face    nil)
  (sly-mrepl-output-face (:foreground PaleOrange :slant 'italic))
  (sly-mrepl-prompt-face (:foreground Cyan :weight 'normal))
  
  (sly-note-face               (:underline Yellow))
  (sly-part-button-face        (:foreground Green))
  (sly-reader-conditional-face (:inherit 'font-lock-comment-face))
  (sly-style-warning-face      (:underline Caret))
  (sly-warning-face            (:underline Highlight-Orange))

  (sly-stickers-armed-face (:inherit 'hi-blue))
  (sly-stickers-empty-face (:inherit 'hi-pink))
  (sly-stickers-exited-non-locally-face
   (:strike-through t :foreground Black :background "IndianRed1"))
  (sly-stickers-placed-face
   (:foreground Black :background EditorForeground))
  (sly-stickers-recordings-face (:inherit 'hi-green))

;;;; tree-sitter
  (tree-sitter-hl-face:attribute
   (:inherit 'font-lock-preprocessor-face))
  (tree-sitter-hl-face:comment
   (:inherit 'font-lock-comment-face))
  (tree-sitter-hl-face:constant
   (:inherit 'font-lock-constant-face))
  (tree-sitter-hl-face:constant.builtin
   (:foreground PaleOrange))
  (tree-sitter-hl-face:constructor
   (:foreground Yellow))
  (tree-sitter-hl-face:doc
   (:inherit 'font-lock-doc-face))
  (tree-sitter-hl-face:embedded
   (:inherit 'default))
  (tree-sitter-hl-face:escape
   (:inherit 'font-lock-keyword-face))
  (tree-sitter-hl-face:function
   (:foreground Blue))
  (tree-sitter-hl-face:function.builtin
   (:inherit 'font-lock-builtin-face))
  (tree-sitter-hl-face:function.call
   (:foreground Blue))
  (tree-sitter-hl-face:function.macro
   (:foreground Blue))
  (tree-sitter-hl-face:function.special
   (:inherit 'font-lock-preprocessor-face))
  (tree-sitter-hl-face:keyword
   (:inherit 'font-lock-keyword-face))
  (tree-sitter-hl-face:label
   (:inherit 'font-lock-preprocessor-face))
  (tree-sitter-hl-face:method
   (:foreground Blue))
  (tree-sitter-hl-face:method.call
   (:foreground Blue))
  (tree-sitter-hl-face:number
   (:foreground PaleOrange))
  (tree-sitter-hl-face:operator
   (:foreground Magenta :slant 'normal))
  (tree-sitter-hl-face:property
   (:inherit 'default))
  (tree-sitter-hl-face:property.definition
   (:inherit 'tree-sitter-hl-face:variable.parameter))
  (tree-sitter-hl-face:punctuation
   (:foreground Cyan))
  (tree-sitter-hl-face:punctuation.bracket
   (:inherit 'tree-sitter-hl-face:punctuation))
  (tree-sitter-hl-face:punctuation.delimiter
   (:inherit 'tree-sitter-hl-face:punctuation))
  (tree-sitter-hl-face:punctuation.special
   (:inherit 'tree-sitter-hl-face:keyword))
  (tree-sitter-hl-face:string
   (:inherit 'font-lock-string-face))
  (tree-sitter-hl-face:string.special
   (:foreground Cyan))
  (tree-sitter-hl-face:tag
   (:inherit 'font-lock-builtin-face))
  (tree-sitter-hl-face:type
   (:foreground Yellow))
  (tree-sitter-hl-face:type.argument
   (:inherit 'tree-sitter-hl-face:type))
  (tree-sitter-hl-face:type.builtin
   (:foreground Yellow))
  (tree-sitter-hl-face:type.parameter
   (:inherit 'font-lock-type-face))
  (tree-sitter-hl-face:type.super
   (:inherit 'tree-sitter-hl-face:type))
  (tree-sitter-hl-face:variable
   (:inherit 'default))
  (tree-sitter-hl-face:variable.builtin
   (:foreground Red))
  (tree-sitter-hl-face:variable.parameter
   (:foreground Red))
  (tree-sitter-hl-face:variable.special
   (:foreground Red :slant 'italic)))
 
 ,@body))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'material-ocean-themes)
;;; material-ocean-themes.el ends here
