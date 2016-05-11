
;; Make sure we can see errors
(add-hook 'after-init-hook
          '(lambda () (setq debug-on-error t)))

(load "leo-package.el")
(load "leo-visuals.el")
(load "leo-init-plugins.el")
(load "leo-keys.el")
(load "leo-tabs.el")
(load "leo-custom-funs.el")
(load "leo-haskell.el")
(load "funda-haxe-mode.el")

