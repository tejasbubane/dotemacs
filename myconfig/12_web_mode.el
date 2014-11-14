(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-extra-auto-pairs '(("erb" . (("open" "close")))))
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
)
(add-hook 'web-mode-hook 'my-web-mode-hook)
