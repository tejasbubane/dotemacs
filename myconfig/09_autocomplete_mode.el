;; Auto-complete mode

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/.cask/24.3.1/elpa/auto-complete-20140208.653/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'css-mode)
(add-to-list 'ac-modes 'javascript-mode)
(add-to-list 'ac-modes 'sh-mode)
(global-auto-complete-mode)
