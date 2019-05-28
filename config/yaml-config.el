(use-package yaml-mode
  :mode ("\\.yaml\\'" "\\.yml\\'")
  :config
  (add-hook 'yaml-mode-hook
            (lambda ()
              (define-key yaml-mode-map "\C-m" 'newline-and-indent))))

(provide 'yaml-config)
