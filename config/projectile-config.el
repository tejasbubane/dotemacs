(use-package projectile
  :init
  (use-package projectile-rails
    :config
    (add-hook 'projectile-mode-hook 'projectile-rails-on)
    (setq projectile-rails-add-keywords nil))

  :diminish projectile-mode
  :diminish projectile-rails-mode

  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-rails-mode-map (kbd "C-c r") 'projectile-rails-command-map)
  (setq projectile-enable-caching t)
  (setq projectile-tags-command
        "ctags-exuberant -Re --languages=ruby --exclude=.git --exclude=log %s %s ."))

(provide 'projectile-config)
