(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

;; Make gnutls recognize the letsencrypt certificate from melpa
;; https://emacs.stackexchange.com/a/18070
(require 'gnutls)
(add-to-list 'gnutls-trustfiles
             (expand-file-name "/usr/local/etc/libressl/cert.pem"))

(setq package--init-file-ensured t)
(package-initialize)

(package-install 'use-package)
(add-to-list 'package-selected-packages 'use-package)

;; Install packages if not available
;; No need to give `require t` for each package
(setq use-package-always-ensure t)

(provide 'package-setup)
