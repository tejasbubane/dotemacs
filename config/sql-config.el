; Mode to upcase SQL keyword and functions
(use-package sqlup-mode
  :config
  ;; Blacklist some words - prevent them from auto-upcase
  ;; (eg. most commonly used `name` as column-name)
  (add-to-list 'sqlup-blacklist "name")
  :hook (sql-mode sql-interactive-mode))

(diminish 'sql-mode "sql")

(provide 'sql-config)
