(use-package auto-complete
  :diminish auto-complete-mode
  :config
  (ac-config-default)
  (setq ac-ignore-case nil)
  (global-auto-complete-mode))

(provide 'ac-config)
