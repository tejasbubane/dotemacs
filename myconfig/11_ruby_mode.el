;; Ruby Mode Config

(add-to-list 'auto-mode-alist '("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'" . ruby-mode))

;; RVM
(rvm-use-default)

;; YARI shorthand
(define-key 'help-command "R" 'yari)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(add-hook 'robe-mode-hook 'flycheck-mode)

;; Highlight-indentation
(require 'highlight-indentation)
(add-hook 'ruby-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))

;; ruby-tools for string-symbol helpers
(add-hook 'ruby-mode-hook 'ruby-tools-mode)

;; use proper rvm from the directory
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

;; evaluating ruby code inside buffer (like playgound)
(require 'rcodetools)
(global-set-key (kbd "C-c C-e") 'xmp)
