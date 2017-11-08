(use-package js2-mode
  :mode ("\\.js\\'")

  :init
  (use-package prettier-js)
  (use-package add-node-modules-path)

  :config
  (defun my-js2-mode-hook()
    ;; Fix offset to 2 (default is 4)
    (setq js2-basic-offset 2)
    ;; disable jshint
    (setq-default flycheck-disabled-checkers
                  '(javascript-jshint jsxhint-checker json-jsonlint))
    (add-node-modules-path)
    (flycheck-mode 1)
    (prettier-js-mode)
    (setq-default
     js2-ignored-warnings
     '("msg.no.side.effects" "msg.missing.semi")))
  (add-hook 'js2-mode-hook 'my-js2-mode-hook))

(provide 'js2-config)
