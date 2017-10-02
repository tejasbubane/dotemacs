(use-package js2-mode
  :mode ("\\.js\\'")

  :config
  (defun my-js2-mode-hook()
    ;; Fix offset to 2 (default is 4)
    (setq js2-basic-offset 2)

    ;; disable jshint since we prefer eslint checking
    (setq-default flycheck-disabled-checkers
                  '(javascript-jshint jsxhint-checker json-jsonlint))

    (eval-after-load 'flycheck
      '(flycheck-add-mode 'javascript-eslint 'js2-mode))
    (flycheck-mode 1)

    (setq-default
     js2-ignored-warnings
     '("msg.no.side.effects" "msg.missing.semi")))
  (add-hook 'js2-mode-hook 'my-js2-mode-hook))

(provide 'js2-config)
