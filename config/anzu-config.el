(use-package anzu
  :diminish
  :bind
  (("M-%" . anzu-query-replace)
   ("C-M-%" . anzu-query-replace-regexp))
  :hook
  (after-init . global-anzu-mode))

(provide 'anzu-config)
