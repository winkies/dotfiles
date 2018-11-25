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
     go-autocomplete
     go-mode
     iedit
     linum-relative
     load-dir
     neotree
     popup
     yasnippet
     zenburn-theme
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
