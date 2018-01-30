(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (setq yas-snippet-dirs (concat user-emacs-directory (convert-standard-filename "snippets/")))
  (yas-global-mode 1))

(provide 'yasnippet-config)
