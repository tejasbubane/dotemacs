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

;; Bootstrap `use-package`
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path (concat user-emacs-directory (convert-standard-filename "vendor/use-package")))
  (require 'use-package))

;; Install packages if not available
(setq use-package-always-ensure t)

(provide 'package-setup)
