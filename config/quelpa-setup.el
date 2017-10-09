;; Bootstrap quelpa
;; This is used for fetching packages which are not on melpa - using git
;; Making use of small recipes
;; Refer: https://github.com/quelpa/quelpa
(unless (require 'quelpa nil t)
  (with-temp-buffer
    (url-insert-file-contents
     "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

(provide 'quelpa-setup)
