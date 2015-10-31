;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Make dired less verbose
(require 'dired-details)
(setq-default dired-details-hidden-string "")
(dired-details-install)
