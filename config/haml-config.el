(use-package haml-mode
  :config
  (add-hook 'haml-mode-hook (rvm-activate-corresponding-ruby)))

(provide 'haml-config)
