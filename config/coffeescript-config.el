(use-package coffee-mode
  :config
  (setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
  (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace
  (custom-set-variables '(coffee-tab-width 2))

  :bind (("C-j" . 'coffee-newline-and-indent)))

(provide 'coffeescript-config)
