(use-package json-mode
  :config
  (defun my-json-mode-hook()
    (make-local-variable 'js-indent-level)
    (setq js-indent-level 2))
  (add-hook 'json-mode-hook 'my-json-mode-hook))

(provide 'json-config)
