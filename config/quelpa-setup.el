;; Bootstrap quelpa
;; This is used for fetching packages which are not on melpa - using git
;; Making use of small recipes
;; Refer: https://github.com/quelpa/quelpa

;; Disable self-updates of quelpa
;; All packages can be upgraded using `M-x quelpa-upgrade`
(unless (require 'quelpa nil t)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))
;; Set quelpa to not use melpa git repo - that is separately managed by `use-package.el`
(setq quelpa-checkout-melpa-p nil)

(provide 'quelpa-setup)
