(use-package darkokai-theme
  :config
  (load-theme 'darkokai t)
  (when (window-system)
    (setq ns-use-thin-smoothing 't)
    (set-frame-font "Fira Code Retina 13")))

(provide 'theme-font-config)
