(use-package anzu
  :bind
  (("M-%" . anzu-query-replace)
   ("C-M-%" . anzu-query-replace-regexp))

  :config
  (global-anzu-mode))

(provide 'anzu-config)
