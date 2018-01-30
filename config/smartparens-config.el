(use-package smartparens
  :diminish smartparens-mode
  :config
  ;; Try with these and maybe enable globally later
  (add-hook 'js-mode-hook #'smartparens-mode)
  (add-hook 'ruby-mode-hook #'smartparens-mode)
  (add-hook 'emacs-lisp-mode-hook #'smartparens-mode))

(provide 'smartparens-config)
