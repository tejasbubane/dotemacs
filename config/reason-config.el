(defun shell-cmd (cmd)
  "Returns the stdout output of a shell command or nil if the command returned
   an error"
  (car (ignore-errors (apply 'process-lines (split-string cmd)))))

(let* ((refmt-bin (shell-cmd "which refmt"))
       (merlin-bin (shell-cmd "which ocamlmerlin"))
       (merlin-base-dir (when merlin-bin
                          (replace-regexp-in-string "bin/ocamlmerlin$" "" merlin-bin))))
  ;; Add npm merlin.el to the emacs load path and tell emacs where to find ocamlmerlin
  (when merlin-bin
    (add-to-list 'load-path (concat merlin-base-dir "share/emacs/site-lisp/"))
    (setq merlin-command merlin-bin))

  (when refmt-bin
    (setq refmt-command refmt-bin)))

(use-package merlin
  :config
  (setq merlin-ac-setup t))

(use-package reason-mode
  :config
  (defun my-reason-mode-hook()
    (add-hook 'before-save-hook 'refmt-before-save)
    (merlin-mode)
    ;; Issue with emacs hanging
    ;; https://github.com/haskell/haskell-mode/issues/377
    (lambda () (electric-indent-local-mode -1)))
  (add-hook 'reason-mode-hook 'my-reason-mode-hook))

(provide 'reason-config)
