(use-package web-mode
  :mode ("\\.html?\\'" "\\.erb\\'" "\\.mustache\\'" "\\.css\\'" "\\.scss\\'")

  :init
  (use-package rainbow-mode
    :diminish
    :hook (css-mode html-mode js-mode js2-mode rjsx-mode haml-mode))

  :config
  (defun my-web-mode-hook ()
    ;; Hooks for Web mode

    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)

    (setq web-mode-extra-auto-pairs '(("erb" . (("open" "close")))))
    (setq web-mode-enable-auto-pairing t)
    (setq web-mode-enable-css-colorization t)

    (setq web-mode-ac-sources-alist
          '(("css" . (ac-source-css-property))
            ("html" . (ac-source-words-in-buffer ac-source-abbrev)))))
  (add-hook 'web-mode-hook 'my-web-mode-hook))

(use-package haml-mode)

(provide 'web-config)
