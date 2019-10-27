;; Built-in configuration files

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please
(setq inhibit-startup-message t)

;; Display number of the line and the column
(column-number-mode 1)
(line-number-mode t)

;; Display the corresponding parenthesis
(require 'paren)
(show-paren-mode 1)
(setq blink-matching-paren t)
(setq blink-matching-paren-on-screen t)
(setq show-paren-style 'expression)
(setq blink-matching-paren-dont-ignore-comments t)

;; Activated mod displaying the number of line in the left margin windows
;; Avoid Tree Source number line
;; Else replace (add-hook ... ) by (global-linum-mode t)
(require 'linum)
(add-hook 'find-file-hook 'linum-mode)
(setq linum-format "%4d \u2502 ")

;; Enabled the highlighting of superfluous or heterogeneous spaces
(require 'whitespace)

;; Always ask with "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Show space
(setq-default show-trailing-whitespace t)

;; The current line highlighted
(global-hl-line-mode 1)

;; Set syntax highlight
(setq font-lock-maximum-decoration t)

;; Space
(defun delete-trailing-whitespace ()
  (interactive)
  (progn
    (save-excursion
      (goto-line 1)
      (replace-regexp "[  \t]+$" "")
      )
    )
  )

;;
(defun kill-and-join-forward (&optional arg)
  (interactive "P")
  (if (and (eolp) (not (bolp)))
      (progn (forward-char 1)
             (just-one-space 0)
             (backward-char 1)
             (kill-line arg))
    (kill-line arg)))

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;;;;;;;;;;;;;;;;;;;; Macro Commands ;;;;;;;;;;;;;;;;;;;;

;; Delete space
(global-set-key [(control l)] 'delete-trailing-whitespace)

;; Go to asked line
(global-set-key [(control q)] 'goto-line)

;; Indent after new line
(global-set-key (kbd "RET") 'newline-and-indent)

;; Use iedit
(global-set-key [(control f)] 'iedit-mode)

;; Move backward windows
(global-set-key "\C-xp" (lambda ()
			  (interactive)
			  (other-window -1)))

;; New feature ?!
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(setq-default left-fringe-width nil)
(setq-default indicate-empty-lines t)
(setq-default indent-tabs-mode nil)

(provide 'settings)
