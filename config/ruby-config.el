(use-package ruby-mode
  :mode ("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'"
         "\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'")

  ;; These package are used only with ruby-mode, load them along with ruby-mode
  :init
  (use-package ruby-hash-syntax
    :ensure t
    :bind (("C-c h" . ruby-toggle-hash-syntax)))
  (use-package projectile-rails)

  ;; Evaluate this after ruby-mode is loaded
  :config
  (setq ruby-use-smie 't)
  (setq ruby-align-chained-calls 't)
  (defun insert-pry ()
    (interactive)
    (insert "binding.pry"))
  (defun my-ruby-mode-hook()
    (projectile-rails-mode)
    (highlight-indentation-current-column-mode)
    (add-to-list 'flycheck-disabled-checkers 'ruby-reek)
    (global-set-key (kbd "C-c d") 'insert-pry))
  (add-hook 'ruby-mode-hook 'my-ruby-mode-hook))

(provide 'ruby-config)
