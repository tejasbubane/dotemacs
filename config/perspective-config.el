(when (not (fboundp 'make-variable-frame-local))
  (defun make-variable-frame-local (variable) variable))

(use-package perspective
  :init
  (use-package persp-projectile)

  :config
  (persp-mode)
  (winner-mode))

(provide 'perspective-config)
