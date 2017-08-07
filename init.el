(add-to-list 'load-path "~/.emacs.d/config/")

;; Setups
(require 'package-setup)
(require 'window-setup)
(require 'common-setup)

;; Configs
(require 'ag-config)
(require 'ac-config)
(require 'ido-config)
(require 'magit-config)
(require 'markdown-config)
(require 'multiple-cursors-config)
(require 'powerline-config)
(require 'recentf-config)
(require 'restclient-config)
(require 'rspec-config)
(require 'ruby-config)
(require 'sh-config)
(require 'theme-config)
(require 'web-config)
(require 'whitespace-config)
