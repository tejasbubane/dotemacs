(require 'package)

(if (and (fboundp 'native-comp-available-p)
         (native-comp-available-p)) ;; check if native compilation is available
    (progn
      (setq comp-deferred-compilation t) ;; enable deferred compilation for gcc emacs 28
      (setq native-comp-async-report-warnings-errors nil) ;; hide warnings buffer from popping up
))

(customize-set-variable 'package-archives
                        (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")))

(setq package-enable-at-startup nil)
(setq package-check-signature nil)
(setq byte-compile-warnings '(cl-functions))
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

;; Fix for issue: package-install-from-archive: https://elpa.gnu.org/packages/spinner-1.7.3.el: Bad Request
;; Taken from: https://www.reddit.com/r/orgmode/comments/cvmjjr/workaround_for_tlsrelated_bad_request_and_package/
(when (and (>= libgnutls-version 30603)
           (version<= emacs-version "26.2"))
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

(provide 'package-setup)
