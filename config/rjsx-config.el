(use-package rjsx-mode
  :mode "components\\/.*\\.js\\'"

  :init
  (use-package prettier-js)

  :config
  (custom-set-faces
   ;; Make classNames italic
   '(rjsx-attr ((t (:inherit font-lock-variable-name-face
                             :slant italic :height 1.15 :family "Inconsolata")))))
  (defun my-rjsx-mode-hook ()
    (prettier-js-mode)
    (auto-complete-mode))
  (add-hook 'rjsx-mode-hook 'my-rjsx-mode-hook))

(provide 'rjsx-config)
