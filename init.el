;; Package Manager
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Pallet keeps Cask file in sync with packages installed by package-install
(require 'pallet)

;; Load all config files
(setq root-dir "~/.emacs.d")
(setq myconfig (concat root-dir "/myconfig"))
(add-to-list 'load-path myconfig)

;; load all files from myconfig directory
(add-to-list 'load-path "~/.emacs.d/vendor") ;; third party plugins

(mapcar 'load (directory-files myconfig t "\\.el\\'"))


;;; init.el ends here
