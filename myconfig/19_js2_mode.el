;; All javascript related configuration

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook 'flycheck-mode)
(add-hook 'json-mode-hook 'flycheck-mode)
