;; NodeJs configuration file
;;
;; Configuration:       js2-mode
;;                      Auto complete with company

;; js2-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Setup autocompletion node js with Company
(require 'company)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))

(provide 'node)
