(use-package monokai-theme
  :config
  (load-theme 'monokai t)
  (when (window-system)
    (setq ns-use-thin-smoothing 't)
    (set-frame-font "Fira Code Retina 13")))

(provide 'theme-font-config)
