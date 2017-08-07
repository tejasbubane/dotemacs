;; Esup is emacs package used for profiling emacs load times
(use-package esup
  :no-require t ;; No need to require this
  :ensure nil)

;; Run `M-x esup` to run the profiler and get load times for each line in init.el
;; More info: https://github.com/jschaf/esup
