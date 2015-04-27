(projectile-global-mode)

(setq projectile-enable-caching t)

(setq projectile-tags-command "ctags-exuberant -Re --languages=ruby --exclude=.git --exclude=log %s %s .")

;; Projectile Rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(setq projectile-rails-add-keywords nil)
