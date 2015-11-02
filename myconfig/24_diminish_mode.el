;; Unclutter the modeline
(require 'diminish)

(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "eldoc" '(diminish 'eldoc-mode))
(eval-after-load "rainbow-mode" '(diminish 'rainbow-mode))
(eval-after-load "projectile" '(diminish 'projectile-mode))
(eval-after-load "anzu" '(diminish 'anzu-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "robe" '(diminish 'robe-mode))
(eval-after-load "hideshow" '(diminish 'hs-minor-mode))
(eval-after-load "ruby-end" '(diminish 'ruby-end-mode))
(eval-after-load "ruby-tools" '(diminish 'ruby-tools-mode))
(eval-after-load "whitespace"
  '(diminish 'global-whitespace-mode))
(eval-after-load "global-auto-complete"
  '(diminish 'global-auto-complete-mode))

(eval-after-load "js2-mode"
  '(defadvice js2-mode (after js2-rename-modeline activate)
     (setq mode-name "JS+")))
(eval-after-load "clojure-mode"
  '(defadvice clojure-mode (after clj-rename-modeline activate)
     (setq mode-name "Clj")))
(eval-after-load "typescript"
  '(defadvice typescript-mode (after typescript-rename-modeline activate)
     (setq mode-name "TS")))
(eval-after-load "nxhtml-mode"
  '(defadvice nxhtml-mode (after nxhtml-rename-modeline activate)
     (setq mode-name "HTML")))
(eval-after-load "js"
  '(defadvice js-mode (after js-rename-modeline activate)
     (setq mode-name "JS")))
(defadvice emacs-lisp-mode (after elisp-rename-modeline activate)
  (setq mode-name "ELisp"))
