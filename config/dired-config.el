(require 'dired)

(use-package dired-details
  :config
  (setq-default dired-details-hidden-string "")
  (dired-details-install))
(use-package dired+
  :config
  (diredp-toggle-find-file-reuse-dir 1))

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)
;; Always copy/delete recursively
(setq dired-recursive-copies (quote always))
(setq dired-recursive-deletes (quote top))

;; Kill all dired buffers
(defun kill-dired-buffers ()
  (interactive)
  (mapc (lambda (buffer)
          (when (eq 'dired-mode (buffer-local-value 'major-mode buffer))
            (kill-buffer buffer)))
        (buffer-list)))

(provide 'dired-config)