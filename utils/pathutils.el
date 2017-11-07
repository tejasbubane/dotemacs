(defun show-path-variable ()
  (interactive)
  ;; Create a new buffer to display results to user
  (switch-to-buffer (get-buffer-create "*path-variable*"))
  ;; Clear buffer
  (delete-region (point-min) (point-max))
  ;; save cursor position
  (save-excursion
   (mapc (lambda (p) (insert (concat  p "\n")))
         (split-string (getenv "PATH")
                       ;; Get path separator (;) for Windows
                       ;; and (:) for Unix-like systems.
                       (if (equal system-type 'windows/nt)
                           ";"
                           ":"
                         )))))

(provide 'pathutils)
