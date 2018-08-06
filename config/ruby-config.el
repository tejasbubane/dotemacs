(use-package ruby-mode
  :mode ("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'"
         "\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'")

  ;; These package are used only with ruby-mode, load them along with ruby-mode
  :init
  (use-package ruby-hash-syntax
    :bind (("C-c h" . ruby-hash-syntax-toggle)))
  (use-package projectile-rails)

  ;; Evaluate this after ruby-mode is loaded
  :config
  (setq ruby-use-smie 't)
  (setq ruby-align-chained-calls 't)
  (exec-path-from-shell-copy-env "GEM_PATH")
  (defun insert-pry ()
    (interactive)
    (insert "binding.pry"))
  (defun my-ruby-mode-hook()
    (projectile-rails-mode)
    (add-to-list 'flycheck-disabled-checkers 'ruby-reek 'ruby-rubylint)
    (global-set-key (kbd "C-c d") 'insert-pry))
  (add-hook 'ruby-mode-hook 'my-ruby-mode-hook))

(provide 'ruby-config)
