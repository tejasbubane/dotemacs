(use-package rustic
  :config
  (push 'rustic-clippy flycheck-checkers) ;; see clippy errors in flycheck
  (add-to-list 'ac-modes 'rustic-mode) ;; enable autocomplete mode
)

(provide 'rust-config)
