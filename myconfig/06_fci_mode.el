;; fci mode
;; indicate the column limit - the sacred 80 characters
;; do this only for ruby mode

(setq fci-style 'shading)
(setq fci-rule-column 80)
(setq fci-rule-width 4)

(add-hook 'ruby-mode-hook 'fci-mode)
