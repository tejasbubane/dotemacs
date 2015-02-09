(add-hook 'ruby-mode-hook
	  (lambda () (hs-minor-mode)))

(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
		`(ruby-mode
		  ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
		  ,(rx (or "}" "]" "end"))                       ; Block end
		  ,(rx (or "#" "=begin"))                        ; Comment start
		  ruby-forward-sexp nil)))

(global-set-key (kbd "C-c C-c h") 'hs-hide-block)
(global-set-key (kbd "C-c C-c s") 'hs-show-block)
