(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t)
  (when (window-system)
    (setq ns-use-thin-smoothing 't)
    (set-frame-font "Fira Code Retina 12")))

(provide 'theme-font-config)
