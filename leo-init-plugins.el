;; leo_init_plugins.el
;;
;; Initializes all the plugins and modes

;; IDO
(require 'ido)
(ido-mode 1)
(add-to-list 'auto-mode-alist '("\\.js\\'" . leojs-mode))

;; Evil
(evil-mode 1)

;; Sr-speedbar
;(defun select-next-window ()
;  (other-window 1))
;
;(defun my-sr-speedbar-open-hook ()
;  (add-hook 'speedbar-before-visiting-file-hook 'select-next-window t)
;  (add-hook 'speedbar-before-visiting-tag-hook 'select-next-window t))

;(advice-add 'sr-speedbar-open :after #'my-sr-speedbar-open-hook)
(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(sr-speedbar-open)
(sr-speedbar-refresh-turn-off)
(add-hook 'after-init-hook 'global-company-mode)

;; Window numbering support
(window-numbering-mode 1)


; Show bookmarks when it's all done
(defun show-bookmarks ()
	(setq inhibit-splash-screen t)
	(require 'bookmark)
	;(select-window-2)
	(split-window-below)
	(bookmark-bmenu-list)
	(switch-to-buffer "*Bookmark List*")
	(set-window-parameter (selected-window) 'no-other-window t)
)
(add-hook 'after-init-hook
	  '(lambda () (show-bookmarks)))
