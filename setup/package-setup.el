(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package--init-file-ensured t)
(package-initialize)

;; use-package config
;; putting it here and not in config file
;; because this needs to be loaded before all packages
;; https://github.com/jwiegley/use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  ;; Install use-package itself using package.el
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
;; Install packages if not available
;; No need to give `require t` for each package
(setq use-package-always-ensure t)
;; use :diminish from use-package macro
(use-package diminish)
;; use any :bind variant
(require 'bind-key)

;; auto-package-update config
;; https://github.com/rranelli/auto-package-update.el
;; Taken from https://www.youtube.com/watch?v=2-5kQ7KGQno
(use-package auto-package-update
  :config
  (setq auto-package-update-interval 4) ;; update every 4 days
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-prompt-before-update t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(provide 'package-setup)
