(when (not (fboundp 'make-variable-frame-local))
  (defun make-variable-frame-local (variable) variable))

(use-package perspective
  :init
  (use-package persp-projectile)

  :custom
  (persp-mode-prefix-key (kbd "C-x x"))

  :config
  (persp-mode)
  (winner-mode))

(provide 'perspective-config)
