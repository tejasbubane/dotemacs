(use-package auto-complete
  :diminish auto-complete-mode
  :config
  (ac-config-default)
  (setq ac-ignore-case nil)
  (global-auto-complete-mode)
  ;; ac-mode has issues with emacs 30
  ;; Below is a workaround to fix that issue
  ;; https://github.com/auto-complete/auto-complete/issues/533
  ;; Remove if irrelevant in future
  (add-hook 'auto-complete-mode-hook
          (lambda ()
            (setq ac-sources (remove 'ac-source-abbrev ac-sources)))))

(provide 'ac-config)
