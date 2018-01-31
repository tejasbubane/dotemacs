(use-package flycheck
  :diminish flycheck-mode

  :config
  (advice-add 'flycheck-eslint-config-exists-p :override (lambda() t))
  (global-flycheck-mode))

(provide 'flycheck-config)
