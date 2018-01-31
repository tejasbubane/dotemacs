;; Some random configuration

(setq user-full-name "Tejas Bubane"
      user-mail-address "tejasbubane@gmail.com")

;; Emacs Server
(require 'server)
(unless (server-running-p) (server-start))

;; Delete trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; There should be a newline at the end of every file I save
(setq require-final-newline t)

;; never use tabs for indentation
(setq-default indent-tabs-mode nil)

;; To avoid file system clutter we put all auto saved files in a single directory.
(defvar emacs-autosave-directory
  (concat user-emacs-directory "autosaves/"))

;; Sets all files to be backed up and auto saved in a single directory.
(setq backup-directory-alist
      `((".*" . ,emacs-autosave-directory))
      auto-save-file-name-transforms
      `((".*" ,emacs-autosave-directory t)))

;; Save my position in a file over sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; UTF-8 please
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

;; shorthands for yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; follow symlinks by default
(setq vc-follow-symlinks 't)

;; Ask for confirmation before closing emacs
(setq confirm-kill-emacs 'yes-or-no-p)

;; load $PATH from .zshenv
(use-package exec-path-from-shell
  :config (exec-path-from-shell-initialize))

;; add custom paths to exec-path
(setq exec-path (append exec-path '("~/bin")))
(setq exec-path (append exec-path '("/usr/sbin")))

;; Define where we want to keep `loaddefs.el` (our autoload declarations) and
;; `custom.el` (our user settings file).
(setq autoload-file "~/.emacs.d/loaddefs.el")
(setq custom-file "~/.emacs.d/custom.el")

;; Load the user settings from `custom.el`.
(load custom-file 'noerror)

;; Use pretty symbols - eg lambda character
(global-prettify-symbols-mode 1)

;; Diminish mode - just install here
;; And use with `use-package` directly:
;; https://github.com/jwiegley/use-package#diminishing-and-delighting-minor-modes
(use-package diminish)

;; Use subword mode - treats parts of camelCase words separate (camel, Case)
;; Useful for kill-word
(global-subword-mode +1)
(diminish 'subword-mode)

(diminish 'isearch-mode)

(provide 'common-setup)
