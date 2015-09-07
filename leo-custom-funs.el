;; leo_custom_funs.el
;;
;; Custom functions and commands


(defun eshell/clear ()
  "04Dec2001 - sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun repo ()
  (interactive)
  (eww "http://scm.discern-abu.cerner.corp/svn")
  )

(defun commit ()
  (interactive)
  (shell-command-to-string "\"c:/Program Files/TortoiseSVN/bin/TortoiseProc.exe\" /command:commit /path:.")
  )

(defun refresh-sidebar ()
  (interactive)
  (sr-speedbar-refresh)
  )

(defun desktop-font () (interactive) (set-face-attribute 'default nil :height 180))
(defun laptop-font () (interactive) (set-face-attribute 'default nil :height 120))
