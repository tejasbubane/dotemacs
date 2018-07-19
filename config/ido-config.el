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
        ido-use-filename-at-point nil
        ido-use-faces nil))

;; flx-mode might trigger emacs GC a lot of times - which makes completion slow
;; Do not to run GC when minibuffer is active
;; Ref: [1] https://bling.github.io/blog/2016/01/18/why-are-you-changing-gc-cons-threshold/
;;      [2] https://github.com/lewang/flx/blob/master/README.md
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

(provide 'ido-config)
