;; leo_init_plugins.el
;;
;; Initializes all the plugins and modes

;; IDO
(require 'ido)
(ido-mode 1)
(add-to-list 'auto-mode-alist '("\\.js\\'" . leojs-mode))

;; Evil
(evil-mode 1)
(evil-set-initial-state 'shell-mode 'emacs)
(evil-set-initial-state 'eshell-mode 'emacs)
(evil-set-initial-state 'bookmark-bmenu-mode 'emacs)

;; Sr-speedbar
(defun select-next-window ()
  (other-window 2))

(defun my-sr-speedbar-open-hook ()
  (add-hook 'speedbar-before-visiting-file-hook 'select-next-window t)
  (add-hook 'speedbar-before-visiting-tag-hook 'select-next-window t))

(advice-add 'sr-speedbar-open :after #'my-sr-speedbar-open-hook)
(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
;(sr-speedbar-open)
;(linum-mode -1)
;(sr-speedbar-refresh-turn-off)
(add-hook 'after-init-hook 'global-company-mode)

;; Window numbering support
(window-numbering-mode 1)


; Show bookmarks when it's all done
(defun show-bookmarks ()
	(setq inhibit-splash-screen t)
	(require 'bookmark)
	;(select-window-2)
	;(split-window-below)
	(bookmark-bmenu-list)
	(switch-to-buffer "*Bookmark List*")
	;(set-window-parameter (selected-window) 'no-other-window t)
	(linum-mode -1)
)
(add-hook 'after-init-hook
	  '(lambda () (show-bookmarks)))

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
