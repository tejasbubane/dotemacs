(use-package paredit
  :commands paredit-mode
  :diminish paredit-mode)

(use-package cider)

(use-package clojure-mode
  :commands clojure-mode
  :diminish clojure-mode
  :config
  (add-hook
   'clojure-mode-hook
   (lambda ()
     (paredit-mode))))

(provide 'clojure-config)
