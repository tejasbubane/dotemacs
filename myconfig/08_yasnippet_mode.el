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
