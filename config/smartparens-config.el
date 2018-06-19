(use-package smartparens
  :diminish smartparens-mode
  :hook ((js-mode . smartparens-mode)
         (ruby-mode . smartparens-mode)
         (emacs-lisp-mode . smartparens-mode)))

(provide 'smartparens-config)
