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
  (setq projectile-enable-caching t)
  (setq projectile-tags-command "ctags-exuberant -Re --languages=ruby --exclude=.git --exclude=log %s %s ."))

(provide 'projectile-config)
