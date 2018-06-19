;; Cannot use use-package with pre-installed packages
(require 'dired)

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

;; Reuse dired buffers
(put 'dired-find-alternate-file 'disabled nil)
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
                                        ; was dired-advertised-find-file
(define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))
                                        ; was dired-up-directory

(defun my-dired-mode-hook ()
  "to be run as hook for `dired-mode'."
  (dired-hide-details-mode 1)) ; hide file details like permissions, timestamps, etc.
(add-hook 'dired-mode-hook 'my-dired-mode-hook)

(provide 'dired-config)
