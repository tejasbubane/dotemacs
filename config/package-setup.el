(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/"))

;; Make gnutls recognize the letsencrypt certificate from melpa
;; https://emacs.stackexchange.com/a/18070
(require 'gnutls)
(add-to-list 'gnutls-trustfiles
             (expand-file-name "/usr/local/etc/libressl/cert.pem"))

(setq package--init-file-ensured t)
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Install packages if not available
(setq use-package-always-ensure t)

(provide 'package-setup)
