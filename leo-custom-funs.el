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

(defun desktop-font () (interactive) (set-face-attribute 'default nil :height 180))
(defun laptop-font () (interactive) (set-face-attribute 'default nil :height 120))

(defun open-in-browser()
  (interactive)
  (let ((filename (buffer-file-name)))
    (browse-url (concat "file://" filename))))

(defun tit(title)
  (interactive "sNew title: ")
  (setq frame-title-format title)
  )

(defun create-shell ()
    "creates a shell with a given name"
    (interactive);; "Prompt\n shell name:")
    (let ((shell-name (read-string "shell name: " nil)))
    (shell (concat "*shell :: " shell-name "*"))))
  
(defun curshell ()
    "creates a shell where the name is the current file"
    (interactive);; "Prompt\n shell name:")
    (let ((shell-name (expand-file-name default-directory)))
    (shell (concat "*shell :: " shell-name "*"))))
