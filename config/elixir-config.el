(use-package elixir-mode
  :init
  (use-package exunit)

  :config
  (defun my-elixir-mode-hook()
    (add-hook 'before-save-hook 'elixir-format nil t)
    (fira-code-mode))
  (add-hook 'elixir-mode-hook 'my-elixir-mode-hook))

(provide 'elixir-config)
