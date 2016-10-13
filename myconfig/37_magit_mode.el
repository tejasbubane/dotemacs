;; Search these directories for git repositories
(setq magit-repository-directories '(("~/Work" . 2)
                                     ("~/opensource" . 1)
                                     ("~/exercism_submissions" . 1)))

;; Bind key for getting repo list
(global-set-key (kbd "C-c l") 'magit-list-repositories)
