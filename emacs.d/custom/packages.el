;; Package configuration file
;;
;; Packages:    Yasnippet
;;              Yaml Mode
;;              JS3 Mode
;;              Zenburn theme

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

;; Load Zenburn theme
;; (load-theme 'zenburn t)

;; Source Tree Neo
;; (require 'neotree)
;; (require 'linum-relative)
;; (setq neo-theme 'nerd)
;; (setq neo-smart-open t)
;; (neotree-show)

(provide 'packages)
