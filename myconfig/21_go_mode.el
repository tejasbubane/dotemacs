(require 'go-mode)
(setenv "GOPATH" "~/gocode")

(defun my-go-mode-hook ()
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  ;; keybindings
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-,") 'godef-jump-other-window))

(add-hook 'go-mode-hook 'my-go-mode-hook)
