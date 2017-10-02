(use-package rjsx-mode
  :mode "components\\/.*\\.js\\'"

  :init
  (use-package prettier-js)

  :config
  (custom-set-faces
   ;; Note before copying: Your init file should contain only one such instance.
   ;; If needed in other mode, add to the list and move in init.ek
   '(rjsx-attr ((t (:inherit font-lock-variable-name-face
                             :slant italic :height 1.15 :family "Inconsolata")))))
  (add-hook 'rjsx-mode-hook 'prettier-js-mode))

(provide 'rjsx-config)
