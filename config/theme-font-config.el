(use-package darkokai-theme
  :config
  (setq darkokai-mode-line-padding 1)
  (load-theme 'darkokai t)
  (when (window-system)
    (setq ns-use-thin-smoothing 't)
    (set-frame-font "Fira Code Retina 10")))

(provide 'theme-font-config)
