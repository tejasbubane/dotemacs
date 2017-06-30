;; Config for JS2 mode

;; Use js2 mode for all js files
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Fix offset
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (setq-default flycheck-disabled-checkers
                '(javascript-jshint jsxhint-checker json-jsonlint)))

(eval-after-load 'flycheck
  '(flycheck-add-mode 'javascript-eslint 'js2-mode))

(add-hook 'js2-mode-hook (lambda () (electric-pair-mode 1)))
(add-hook 'js2-mode-hook (lambda () (company-mode 1)))
(add-hook 'js2-mode-hook (lambda () (flycheck-mode 1)))

(setq-default
 js2-ignored-warnings
 '("msg.no.side.effects"))

;; Tern.JS
;; (add-to-list 'load-path "~/tern/emacs/")
;; (autoload 'tern-mode "tern.el" nil t)
;; (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
;; (eval-after-load 'tern
;;   '(progn
;;      (require 'tern-auto-complete)
;;      (tern-ac-setup)))
