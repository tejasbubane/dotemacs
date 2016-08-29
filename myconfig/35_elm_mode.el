;; format files on save
;; require elm-format tool installed
;; download elm-format from here: https://github.com/avh4/elm-format#installation-
(setq elm-format-on-save t)

;; autocomplete elm
;; uses elm-oracle for autocompletion and requires it to be installed
;; npm install -g elm-oracle
(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
