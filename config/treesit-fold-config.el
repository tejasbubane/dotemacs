(use-package treesit-fold
  :config
  (global-treesit-fold-mode)
  (setq treesit-fold-line-count-show t)  ; Show line count in folded regions
  (setq treesit-fold-line-count-format " <%d lines> ")
  (global-set-key (kbd "C-c f") 'treesit-fold-close)
  (global-set-key (kbd "C-c o") 'treesit-fold-open))

(provide 'treesit-fold-config)
