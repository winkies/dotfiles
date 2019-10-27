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
     company-tern
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

;; ;; Install update package if they're pending
;; (require 'auto-package-update)
;; (auto-package-update-maybe)

;; Leave this here, or package.el will just add it again.
(package-initialize)

;; Load my settings
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'load-path (expand-file-name "custom" user-emacs-directory))

;; Also add all directories within "lisp"
;; I use this for packages I'm actively working on, mostly.
(let ((files (directory-files-and-attributes "$HOME/.emacs.d/custom" t)))
  (dolist (file files)
    (let ((filename (car file))
          (dir (nth 1 file)))
      (when (and dir
                 (not (string-suffix-p "." filename)))
        (add-to-list 'load-path (car file))))))

;; (add-to-list 'load-path "~/.emacs.d/custom")
;; (require 'c-mode)
;; (require 'packages)
;; (require 'settings)
;; (require 'messages)
;; (require 'go)
