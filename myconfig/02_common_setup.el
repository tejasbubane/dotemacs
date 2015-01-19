;; Some random configuration

(server-start)

(defalias 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-screen t) ; don't show the startup screen

(setq user-full-name "Tejas Bubane"
      user-mail-address "tejasbubane@gmail.com")

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete trailing whitespaces

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

;; To avoid file system clutter we put all auto saved files in a single directory.
(defvar emacs-autosave-directory
  (concat user-emacs-directory "autosaves/"))
;; Sets all files to be backed up and auto saved in a single directory.
(setq backup-directory-alist
      `((".*" . ,emacs-autosave-directory))
      auto-save-file-name-transforms
      `((".*" ,emacs-autosave-directory t)))

(set-language-environment "UTF-8")

(powerline-default-theme)

(require 'sublimity)
(require 'sublimity-scroll)
(sublimity-mode 1)

(setq require-final-newline t)

;; projectile-mode
(projectile-global-mode)
