;; leo_init_plugins.el
;;
;; Initializes all the plugins and modes

(require 'js-doc)

;; IDO
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; Smex
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")

;; Evil
(evil-mode 1)

;; Company
(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)

;; Window numbering support
(window-numbering-mode 1)


;; Supposedely makes things faster
(setq jit-lock-defer-time 0.10)

;; Puts backup files somewhere else
(setq backup-directory-alist `(("." . "~/.saves")))
