;; Ruby Mode Config

(add-to-list 'auto-mode-alist '("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'" . ruby-mode))

;; Rinari mode for Rails
(require 'rinari)
(global-rinari-mode)
;; RVM
(rvm-use-default)

;; YARI shorthand
(define-key 'help-command "R" 'yari)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(add-hook 'robe-mode-hook 'flycheck-mode)
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Highlight-indentation
(require 'highlight-indentation)
(add-hook 'ruby-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))

;; ruby-tools for string-symbol helpers
(add-hook 'ruby-mode-hook 'ruby-tools-mode)
