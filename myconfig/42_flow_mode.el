;; Enable flow mode when @flow comment is seen in js file

(load-file "~/.emacs.d/vendor/flow-for-emacs/flow.el")

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-flow))

(require 'flycheck-flow)
(flycheck-add-mode 'javascript-flow 'rjsx-mode)
(flycheck-add-mode 'javascript-flow 'js2-mode)
(flycheck-add-mode 'javascript-flow 'js-mode)
(flycheck-add-mode 'javascript-flow 'web-mode)
