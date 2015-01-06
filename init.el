;; Package Manager
(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; Pallet keeps Cask file in sync with packages installed by package-install
(require 'pallet)

;; Load all config files
(add-to-list 'load-path "~/.emacs.d/myconfig")
(load "00_window_startup_config.el")
(load "01_keybindings.el")
(load "02_common_setup.el")
(load "03_theme_font.el")
(load "04_transparent_emacs.el")
(load "06_fci_mode.el")
(load "05_ido_mode.el")
(load "07_recentf_mode.el")
(load "08_yasnippet_mode.el")
(load "09_autocomplete_mode.el")
(load "10_silver_searcher.el")
(load "11_ruby_mode.el")
(load "12_web_mode.el")
(load "13_coffee_mode.el")
(load "14_sh_mode.el")
(load "15_restclient_mode.el")

;;; init.el ends here
