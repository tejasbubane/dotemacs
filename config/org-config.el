(require 'org)

;; Use org-bullets for pretty bullets in org buffers
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'org-config)
