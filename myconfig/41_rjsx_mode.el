;; rjsx mode for *.js in components directory
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

(add-hook 'rjsx-mode-hook (lambda () (auto-complete-mode 1)))

(custom-set-faces
 ;; Note before copying: Your init file should contain only one such instance.
 ;; If needed in other mode, add to the list and move in init.ek
 '(rjsx-attr ((t (:inherit font-lock-variable-name-face :slant italic :height 1.15 :family "Inconsolata")))))

;; Tried fonts - looking descent
;; flottflott
;; DS Gabriele

(print (font-family-list))
