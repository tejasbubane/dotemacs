(use-package magit
  :bind (("C-c m" . magit-status)
         ("C-c l" . magit-list-repositories))

  :config
  (setq magit-repository-directories
        '(("~/Work" . 2)
          ("~/opensource" . 1)
          ("~/exercism_submissions" . 1))))

(provide 'magit-config)
