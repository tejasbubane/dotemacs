(use-package rjsx-mode
  :mode "components\\/.*\\.js\\'"

  :config
  (defun my-rjsx-mode-hook ()
    (custom-set-faces
     ;; Make classNames italic
     '(rjsx-attr ((t (:inherit font-lock-variable-name-face
                               :slant italic :height 1.15 :family "Inconsolata"))))))
  (add-hook 'rjsx-mode-hook 'my-rjsx-mode-hook))

(provide 'rjsx-config)
