;; yasnippet

(require 'yasnippet)
(add-hook 'prog-mode-hook
          '(lambda ()
             (yas-minor-mode)))
(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacs.d/mysnippets/rails-snippets")))
(setq yas-snippet-dirs (append yas-snippet-dirs
			       '("~/.emacs.d/mysnippets/rspec-snippets")))
(yas-global-mode 1)

;; Disable yas in terminal for the TAB completion in terminal to work
(add-hook 'term-mode-hook
          '(lambda ()
             (yas-minor-mode 0)))
