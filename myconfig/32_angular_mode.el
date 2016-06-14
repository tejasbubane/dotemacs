;; Using 4 spaces of indentation in the angular project

;; For JS
(add-hook 'angular-mode-hook
          (lambda ()
            (setq js-indent-level 4)))

;; For HTML
(add-hook 'angular-html-mode-hook
          (lambda ()
            (set (make-local-variable 'sgml-basic-offset) 4)))
