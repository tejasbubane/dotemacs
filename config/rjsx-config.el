(use-package rjsx-mode
  :mode "components\\/.*\\.js\\'"

  :config
  (defun my-rjsx-mode-hook ()
    (add-to-list 'ac-modes 'rjsx-mode))
  (add-hook 'rjsx-mode-hook 'my-rjsx-mode-hook))

(provide 'rjsx-config)
