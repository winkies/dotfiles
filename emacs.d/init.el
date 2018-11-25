;; Emacs Configuration File
;; MELPA Package Emacs
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;; Install packages if they're missing
(setq package-list
   '(auto-complete
     auto-complete-c-headers
     auto-package-update
     dash
     company-tern
     go-autocomplete
     go-mode
     iedit
     js3-mode
     linum-relative
     load-dir
     neotree
     popup
     yasnippet
     zenburn-theme
     ruby-mode
     robe
     xref-js2
     yaml-mode
     ))

;; Fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; Install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
        (package-install package)))

;; Install update package if they're pending
(require 'auto-package-update)
(auto-package-update-maybe)

;; Load my settings
(add-to-list 'load-path "~/.emacs.d/custom")
(require 'c-mode)
(require 'packages)
(require 'settings)
(require 'messages)

;;
;; Yaml Mode
;;
(add-hook 'yaml-mode-hook
        (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
