;; Initialization stuff
(add-to-list 'load-path "~/.emacs.d/")
(setq root-dir (file-name-directory
	(or (buffer-file-name) load-file-name)))
(setq inhibit-startup-screen t) ; don't show the startup screen
(global-auto-revert-mode 1)     ; auto revert buffers when changed on disk
(show-paren-mode t)             ; visualize()
(iswitchb-mode t)               ; use advanced tab switching
(blink-cursor-mode -1)          ; no cursor blinking
(tool-bar-mode -1)              ; disable the awful toolbar
(menu-bar-mode -1)              ; no menu bar
(scroll-bar-mode -1)            ; disable the sroll bar
(defalias 'yes-or-no-p 'y-or-n-p)

;; Package Manager
(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; Pallet keeps Cask file in sync with packages installed by package-install
(require 'pallet)

;; Theme and visual stuff
(add-to-list 'load-path "~/.emacs.d/modules")
(require 'color-theme-railscasts)
(color-theme-railscasts)
(set-frame-font "Consolas 10" nil t)
(setq echo-keystrokes 0.02)
;; Powerline
(require 'powerline)

;; Transparent Emacs
(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; Magit
(require 'magit)
(eval-after-load 'magit
  (progn '(global-set-key (kbd "C-x g") 'magit-status)))

;; Ruby Mode
(add-to-list 'auto-mode-alist '("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'" . ruby-mode))

;; Auto-complete mode
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/.cask/24.3.1/elpa/auto-complete-20140208.653/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'python-mode)

;; Projectile mode
(projectile-global-mode +1)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights.

;; Use grizzle with projectile (comment the ido stuff above and uncomment this)
;; (require 'grizzl)
;; (setq projectile-indexing-method 'git)
;; (setq projectile-completion-system 'grizzl)
;; ;; Press Command-p for fuzzy find in project
;; (global-set-key (kbd "s-p") 'projectile-find-file)
;; ;; Press Command-b for fuzzy switch buffer
;; (global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

;; Highlight-indentation
(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))

;; Flyspell
(require 'flyspell)
(setq flyspell-issue-message-flg nil)
(add-hook 'enh-ruby-mode-hook
          (lambda () (flyspell-prog-mode)))
(ac-flyspell-workaround)

;; Multiple Cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Smooth scroll mode with in-place-scroll (M-up/down)
(require 'smooth-scroll)
(smooth-scroll-mode t)
(setq scroll-step 1) ;; keyboard scroll one line at a time
(global-set-key [(meta  down)]  'scroll-up-1)
(global-set-key [(meta  up)]    'scroll-down-1)

;; Rinari mode for Rails
(require 'rinari)
(global-rinari-mode)
;; RVM
(rvm-use-default)

;; YARI shorthand
(define-key 'help-command "R" 'yari)

;; delete trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)
