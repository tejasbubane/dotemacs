;; All global keybindings reside here

(global-set-key (kbd "C-c c") 'comment-region)

;; Multiple Cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-c m") 'magit-status)

;; (define-key yas-minor-mode-map (kbd "<C-tab>")     'yas-ido-expand)
