(use-package ag
  :config
  (setq ag-highlight-search t)
  (setq ag-reuse-buffers t)

  :bind (("C-c . a g" . ag)))

(provide 'ag-config)
