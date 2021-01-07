;; Package configuration file
;;
;; Packages:    Yasnippet
;;              Yaml Mode
;;              JS3 Mode
;;              ESS
;;              Editorconfig

;; Load yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Yaml Mode
(add-hook 'yaml-mode-hook
        (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; JS3 Mode
(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

;; ESS
;; (add-to-list 'load-path "$HOME/.emacs.d/git/ESS/lisp")
;; (load "ess-site")

;; Editor Config
(require 'editorconfig)
(editorconfig-mode 1)

(global-set-key "\M-[1;5C"    'forward-word)  ; Ctrl+right   => forward word
(global-set-key "\M-[1;5D"    'backward-word) ; Ctrl+left    => backward word

(provide 'packages)
