;; Cannot use use-package with pre-installed packages

(setq ispell-program-name (executable-find "hunspell")
      ispell-dictionary "en_GB")

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))

(provide 'flyspell-config)
