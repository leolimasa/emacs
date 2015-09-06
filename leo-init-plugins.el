;; leo_init_plugins.el
;;
;; Initializes all the plugins and modes

;; IDO
(require 'ido)
(ido-mode t)

;; Smex
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")

;; Leo JS
(add-to-list 'auto-mode-alist '("\\.js\\'" . leojs-mode))

;; Evil
(evil-mode 1)

;; Sr-speedbar
(defun select-next-window ()
  (other-window 1))

(defun my-sr-speedbar-open-hook ()
  (add-hook 'speedbar-before-visiting-file-hook 'select-next-window t)
  (add-hook 'speedbar-before-visiting-tag-hook 'select-next-window t)
  )

(advice-add 'sr-speedbar-open :after #'my-sr-speedbar-open-hook)
(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(sr-speedbar-open)

;; Disable numbering for the sr-speedbar
(sr-speedbar-select-window)
(linum-mode -1)

;; Company
(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)

;; Window numbering support
(window-numbering-mode 1)
