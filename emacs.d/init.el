;; Emacs Configuration File
;; MELPA Package Emacs

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)

;; Install packages if they're missing
(setq package-list
   '(auto-complete
     auto-complete-c-headers
     auto-package-update
     dash
     editorconfig
     flycheck
     go-autocomplete
     go-mode
     iedit
     js2-mode
     js3-mode
     linum-relative
     load-dir
     org
     popup
     rebecca-theme
     robe
     ruby-mode
     xref-js2
     yaml-mode
     yasnippet
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

;; Leave this here, or package.el will just add it again.
(package-initialize)

;; Load my settings
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'load-path "~/.emacs.d/custom")
(require 'c-mode)
(require 'packages)
(require 'settings)
(require 'messages)
(require 'go)
