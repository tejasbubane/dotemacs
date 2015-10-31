;; Package Manager

(cond
 ((string-equal system-type "darwin") ; for OS X
  (require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el"))
 ((string-equal system-type "gnu/linux") ; for Linux
  (require 'cask "~/.cask/cask.el")))
(cask-initialize)

;; Pallet keeps Cask file in sync with packages installed by package-install
(require 'pallet)
(pallet-mode t)

;; Load all config files
(setq root-dir "~/.emacs.d")

(setq myconfig (concat root-dir "/myconfig"))
(add-to-list 'load-path myconfig)

(setq vendor (concat root-dir "/vendor"))
(add-to-list 'load-path vendor) ;; third party plugins

(mapcar 'load (directory-files myconfig t "\\.el\\'"))
(mapcar 'load (directory-files vendor t "\\.el\\'"))

;;; init.el ends here
