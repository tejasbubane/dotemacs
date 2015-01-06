;; Restclient mode expects the function json-pretty-print-buffer
;; but this function is available in emacs 24.4
;; restclient does not pretty-print json if this function is not available
;; This hack fixes the issue

(defun json-pretty-print-buffer ()
  "Pretty-print current buffer."
  (json-mode-beautify))

(provide 'json-pretty-print-buffer)
