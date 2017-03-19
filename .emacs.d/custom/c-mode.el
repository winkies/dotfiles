;; C/C++ configuration file
;;
;; Configuration:	Semantic
;;			CEDET
;;			Auto complete headers

;; Load auto complete
(require 'auto-complete-config)
(ac-config-default)

;; Define function in order to auto complete C/C++ headers
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '/usr/include/x86_64-linux-gnu))

;; Call header function
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;; Semantic settings
(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

;; Enable EDE only in C/C++
(require 'ede)
(global-ede-mode)

;; Function adds semantic as suggestion backend to auto complete
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
  )
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

(provide 'c-mode)
