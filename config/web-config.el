(use-package web-mode
  :mode ("\\.html?\\'" "\\.erb\\'" "\\.mustache\\'" "\\.css\\'" "\\.scss\\'")

  :config
  ((defun my-web-mode-hook ()
  "Hooks for Web mode."

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (setq web-mode-extra-auto-pairs '(("erb" . (("open" "close")))))
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)

  (setq web-mode-ac-sources-alist
        '(("css" . (ac-source-css-property))
          ("html" . (ac-source-words-in-buffer ac-source-abbrev)))))
   (add-hook 'web-mode-hook 'my-web-mode-hook)))

(provide 'web-config)
