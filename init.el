;; Package Manager
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Pallet keeps Cask file in sync with packages installed by package-install
(require 'pallet)

;; Load all config files
(setq root-dir "~/.emacs.d")
(setq myconfig (concat root-dir "/myconfig"))
(add-to-list 'load-path myconfig)

(mapcar 'load (directory-files myconfig t "\\.el\\'"))

(add-to-list 'load-path "~/.emacs.d/vendor") ;; third party plugins

;;; init.el ends here
