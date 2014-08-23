;; Transparent Emacs
(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))
(global-set-key (kbd "C-c t") 'toggle-transparency)
