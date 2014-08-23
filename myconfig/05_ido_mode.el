;; Config for ido-mode

(dolist (mode
         '(ido-mode                   ; Interactivly do.
           ido-everywhere             ; Use Ido for all buffer/file reading.
           ido-vertical-mode          ; Makes ido-mode display vertically.
           flx-ido-mode))             ; Toggle flx ido mode.
  (funcall mode 1))

(setq ido-use-faces nil) ;; disable ido faces to see flx highlights.

(setq ido-file-extensions-order
      '(".rb" ".html.erb" "html" "yml" ".css" ".js" ".el"))

(add-to-list 'ido-ignore-buffers "*Messages*" "*scratch*")

;; make M-x behave more like ido-mode
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
