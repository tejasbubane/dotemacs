;; Some random configuration

(setq user-full-name "Tejas Bubane"
      user-mail-address "tejasbubane@gmail.com")

(load "server")
(unless (server-running-p) (server-start))

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete trailing whitespaces
(setq require-final-newline t) ;; There should be a newline at the end of every file I save

;; To avoid file system clutter we put all auto saved files in a single directory.
(defvar emacs-autosave-directory
  (concat user-emacs-directory "autosaves/"))
;; Sets all files to be backed up and auto saved in a single directory.
(setq backup-directory-alist
      `((".*" . ,emacs-autosave-directory))
      auto-save-file-name-transforms
      `((".*" ,emacs-autosave-directory t)))

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top
(set-language-environment "UTF-8")

(powerline-default-theme)

;; add custom paths to exec-path
(setq exec-path (append exec-path '("~/bin")))
(setq exec-path (append exec-path '("/usr/sbin")))

(defalias 'yes-or-no-p 'y-or-n-p) ;; shorthands for yes and no
