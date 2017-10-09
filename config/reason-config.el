;; Reason mode is not on Melpa, fetch it directly from github using quelpa
(quelpa '(reason-mode :repo "reasonml-editor/reason-mode" :fetcher github))

(use-package reason-mode
  :init
  (use-package merlin)
  (use-package utop
    :config
    (setq utop-command "opam config exec -- rtop -emacs")
    (add-hook 'reason-mode-hook #'utop-minor-mode))

  :config
  (defun shell-cmd (cmd)
    "Returns the stdout output of a shell command or nil if the command returned an error"
    (car (ignore-errors (apply 'process-lines (split-string cmd)))))
  (let* ((refmt-bin (or (shell-cmd "refmt ----where")
                        (shell-cmd "which refmt")))
         (merlin-bin (or (shell-cmd "ocamlmerlin ----where")
                         (shell-cmd "which ocamlmerlin")))
         (merlin-base-dir (when merlin-bin
                            (replace-regexp-in-string
                             "bin/ocamlmerlin$" "" merlin-bin))))
    (when merlin-bin
      (add-to-list 'load-path (concat merlin-base-dir "share/emacs/site-lisp/"))
      (setq merlin-command merlin-bin))
    (when refmt-bin
      (setq refmt-command refmt-bin)))
  (add-hook 'reason-mode-hook (lambda ()
                              (add-hook 'before-save-hook 'refmt-before-save)
                              (merlin-mode)))
  (setq merlin-ac-setup t))
