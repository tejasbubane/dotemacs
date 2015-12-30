;; All javascript related configuration
(setq js-indent-level 2)

(add-hook 'js-mode-hook 'flycheck-mode)
(add-hook 'json-mode-hook 'flycheck-mode)
