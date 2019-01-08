(use-package spaceline
  :init
  (use-package fancy-battery
  :config
  (fancy-battery-mode))

  :config
  (require 'spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-spacemacs-theme))

(provide 'spaceline-mode-config)
