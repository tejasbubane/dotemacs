(use-package monokai-theme
  :config
  (load-theme 'monokai t)
  (when (window-system)
    (set-frame-font "Fira Code Light 13")))

(provide 'theme-font-config)
