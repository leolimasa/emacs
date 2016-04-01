;; leo_init_plugins.el
;;
;; Initializes all the plugins and modes

(require 'js-doc)

;; Projectile
(projectile-global-mode t)

;; Pair braces
(electric-pair-mode 1)

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
(evil-set-initial-state 'shell-mode 'emacs)
(evil-set-initial-state 'eshell-mode 'emacs)
;(evil-set-initial-state 'bookmark-bmenu-mode 'emacs)

;; Company
(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)

;; Supposedely makes things faster
(setq jit-lock-defer-time 0.10)
	;(set-window-parameter (selected-window) 'no-other-window t)

;; Popwin
(popwin-mode 1)
;;(push '("*GHC Error*" :height 20) popwin:special-display-config)

;; Set path correctly
(defun setunixpath () 
(setenv "PATH"
  (concat
   "/usr/local/bin" ":"
   (getenv "PATH")
  )
))

(cond
 ; ((string-equal system-type "windows-nt") ; Microsoft Windows
  ; (progn
    ; (message "Microsoft Windows")))
 ((string-equal system-type "darwin") ; Mac OS X
	(setunixpath))
 ((string-equal system-type "gnu/linux") ; linux
	(setunixpath)))
;; Puts backup files somewhere else
(setq backup-directory-alist `(("." . "~/.saves")))

; Show bookmarks when it's all done
(defun show-bookmarks ()
	(setq inhibit-splash-screen t)
	(require 'bookmark)
	;(select-window-2)
	(split-window-below)
	(bookmark-bmenu-list)
	(switch-to-buffer "*Bookmark List*")
	(set-window-parameter (selected-window) 'no-other-window t)
	(linum-mode -1)
)
(add-hook 'after-init-hook
	  '(lambda () (show-bookmarks)))

;; Window numbering support
(window-numbering-mode 1)
