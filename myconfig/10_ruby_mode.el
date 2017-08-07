;; Ruby Mode Config

(add-to-list 'auto-mode-alist '("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'" . ruby-mode))

;; RVM
(rvm-use-default)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'flycheck-mode)
(add-hook 'ruby-mode-hook 'projectile-rails-mode)

;; Highlight-indentation
(require 'highlight-indentation)
(add-hook 'ruby-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))

;; Add binding.pry at cursor position
(defun insert-pry ()
  (interactive)
  (insert "binding.pry"))
(global-set-key (kbd "C-c d") 'insert-pry)

;; Align chained method calls
;; eg.   User.something
;;           .something_else
(setq ruby-use-smie 't)
(setq ruby-align-chained-calls 't)

;; Need line numbers in Rspec files
(add-hook 'rspec-mode-hook 'linum-mode)

;; Disable reek checker
(add-hook 'ruby-mode-hook
	  (lambda () (add-to-list 'flycheck-disabled-checkers 'ruby-reek)))
