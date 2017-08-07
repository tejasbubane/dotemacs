;; Some stuff take from ohai-emacs: https://github.com/bodil/ohai-emacs/blob/master/modules/ohai-ido.el

;; Enable ido-mode
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-url-at-point t
      ido-max-prospects 10
      ido-use-virtual-buffers t
      ido-use-faces nil ;; disable ido faces to see flx highlights
      ido-file-extensions-order '(".rb" ".html.erb" "html" "yml" ".css" ".js" ".el"))
(add-to-list 'ido-ignore-buffers "*Messages*" "*scratch*")

;; Make sure ido is really everywhere
(use-package ido-completing-read+
  :config
  (ido-ubiquitous-mode 1))

;; Use smex to provide ido-like interface for M-x
(use-package smex
  :config
  (smex-initialize)
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ;; This is the old M-x.
         ("C-c C-c M-x" . execute-extended-command)))

;; Vertical ido.
(use-package ido-vertical-mode
  :config
  (ido-vertical-mode))

;; Improved fuzzy matching.
(use-package flx-ido
  :config
  (flx-ido-mode 1)
  (setq ido-enable-flex-matching t
        ido-use-faces nil
        gc-cons-threshold 20000000))

(provide 'ido-config)
