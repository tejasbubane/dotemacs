(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package--init-file-ensured t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  ;; Install use-package itself using package.el
  (package-install 'use-package))
  ;; (add-to-list 'package-selected-packages 'use-package)

(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; to use :diminish

;; Install packages if not available
;; No need to give `require t` for each package
(setq use-package-always-ensure t)

(provide 'package-setup)
