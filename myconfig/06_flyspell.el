;; Flyspell

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
(add-hook 'ruby-mode-hook
          (lambda () (flyspell-prog-mode)))
(add-hook 'text-mode-hook 'turn-on-flyspell)
