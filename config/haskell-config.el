(use-package intero
  :commands intero-mode)

(use-package haskell-mode
  :commands haskell-mode
  :config
  ;; (add-hook 'haskell-mode-hook 'intero-mode)
  (add-hook 'haskell-mode-hook 'fira-code-mode))

(provide 'haskell-config)
