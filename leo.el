
;; Make sure we can see errors
(add-hook 'after-init-hook
          '(lambda () (setq debug-on-error t)))

(load "leo-package.el")
(load "leo-visuals.el")
(load "leo-init-plugins.el")
(load "leo-keys.el")
(load "leo-custom-funs.el")
(load "leo-haskell.el")

; Show bookmarks when it's all done
(defun show-bookmarks ()
	(setq inhibit-splash-screen t)
	(require 'bookmark)
	;(select-window-2)
	(split-window-below)
	(bookmark-bmenu-list)
	(switch-to-buffer "*Bookmark List*")
)
(add-hook 'after-init-hook
	  '(lambda () (show-bookmarks)))
