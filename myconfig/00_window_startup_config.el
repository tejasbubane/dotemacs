;; Disable all unnecessary modes and enable all the cool stuff

(dolist (mode
         '(tool-bar-mode              ; No toolbars, more room for text.
           scroll-bar-mode            ; No scroll bars either.
           blink-cursor-mode          ; The blinking cursor gets old.
	   menu-bar-mode))
  (funcall mode 0))

(dolist (mode
         '(column-number-mode         ; Show column number in mode line.
           delete-selection-mode      ; Replace selected text.
           recentf-mode               ; Recently opened files.
           show-paren-mode            ; Highlight matching parentheses.
	   global-auto-revert-mode
	   iswitchb-mode
	   icomplete-mode))
  (funcall mode 1))
