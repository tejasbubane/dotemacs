;; Make tramp mode fast

(setq remote-file-name-inhibit-cache nil)
(setq vc-ignore-dir-regexp
      (format "%s\\|%s"
                    vc-ignore-dir-regexp
                    tramp-file-name-regexp))
(setq tramp-verbose 1)

;; Fix projectile slowing down tramp mode
;; ref: https://emacs.stackexchange.com/a/17579
(setq projectile-mode-line "Projectile")

(provide 'tramp-config)
