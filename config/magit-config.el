(use-package magit
  :bind (("C-c m" . magit-status)
         ("C-c l" . magit-list-repositories))

  :config
  (setq magit-repository-directories
        '(("~/Work" . 2)
          ("~/opensource" . 1)
          ("~/exercism_submissions" . 1)))
  (defun mu-magit-kill-buffers ()
    "Restore window configuration and kill all Magit buffers."
    (interactive)
    (let ((buffers (magit-mode-get-buffers)))
      (magit-restore-window-configuration)
      (mapc #'kill-buffer buffers)))
  (bind-key "q" #'mu-magit-kill-buffers magit-status-mode-map))

(provide 'magit-config)
