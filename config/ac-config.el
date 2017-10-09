(use-package auto-complete
  :defer t
  :config
  (ac-config-default)
  (setq ac-ignore-case nil)
  (global-auto-complete-mode))

(provide 'ac-config)
