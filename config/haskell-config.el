(use-package intero
  :commands intero-mode)

(use-package haskell-mode
  :commands haskell-mode
  :config
  (add-hook 'haskell-mode-hook 'intero-mode))

(provide 'haskell-config)
