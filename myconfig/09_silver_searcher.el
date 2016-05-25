;; silversearcher - ag
;; replacement for ack-grep

(setq ag-highlight-search t)
(global-set-key (kbd "C-c . a g") 'ag)
(setq ag-reuse-buffers 't)
