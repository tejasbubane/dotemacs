;; Some random configuration

(setq user-full-name "Tejas Bubane"
      user-mail-address "tejasbubane@gmail.com")

(load "server")
(unless (server-running-p) (server-start))

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete trailing whitespaces
(setq require-final-newline t) ;; There should be a newline at the end of every file I save

(setq-default indent-tabs-mode nil) ;; never use tabs for indentation

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

(powerline-default-theme)

(defalias 'yes-or-no-p 'y-or-n-p) ;; shorthands for yes and no

;; follow symlinks by default
(setq vc-follow-symlinks 't)

;; Ask for confirmation before closing emacs
(setq confirm-kill-emacs 'yes-or-no-p)

;; load $PATH from .zshenv
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; add custom paths to exec-path
(setq exec-path (append exec-path '("~/bin")))
(setq exec-path (append exec-path '("/usr/sbin")))
