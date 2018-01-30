;; Capitalize keywords in SQL mode
(add-hook 'sql-mode-hook 'sqlup-mode)
;; Capitalize keywords in an interactive session (e.g. psql)
(add-hook 'sql-interactive-mode-hook 'sqlup-mode)

; Mode to upcase SQL keyword and functions
(use-package sqlup-mode
  :config
  ;; Blacklist some words - prevent them from auto-upcase
  ;; (eg. most commonly used `name` as column-name)
  (add-to-list 'sqlup-blacklist "name"))

(diminish 'sql-mode "sql")

(provide 'sql-config)
