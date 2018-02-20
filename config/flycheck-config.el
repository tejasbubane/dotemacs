(use-package flycheck
  :diminish flycheck-mode

  :config
  (advice-add 'flycheck-eslint-config-exists-p :override (lambda() t))
  (global-flycheck-mode)
  (add-hook 'emacs-lisp-mode-hook
            (lambda () (add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc))))

(provide 'flycheck-config)
