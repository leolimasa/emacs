;; leo_package.el
;;
;; Initializes package repositories

(require 'package)

;; Repositories
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize) 

(require 'smex)
(require 'window-numbering)
(require 'company)
(require 'haskell-mode)
(require 'haskell-cabal)
(require 'evil)
;(require 'sr-speedbar)
(require 'ido)
(require 'powerline)
(require 'popwin)
(require 'fill-column-indicator)
(require 'flycheck)
(require 'flycheck-elm)
(require 'elm-mode)
(require 'tern)
(require 'tern-auto-complete)
(require 'js-doc)
(require 'projectile)
(require 'js2-mode)
(require 'ac-js2)