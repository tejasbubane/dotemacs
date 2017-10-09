(use-package monokai-theme
  :config
  (load-theme 'monokai t)
  (when (window-system)
    (set-default-font "Fira Code Light 13")))

(provide 'theme-config)
