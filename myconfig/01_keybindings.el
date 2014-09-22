;; All global keybindings reside here

(global-set-key (kbd "C-c c") 'comment-region)

;; Multiple Cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-c m") 'magit-status)

(global-set-key (kbd "C-c h") 'ruby-toggle-hash-syntax)
