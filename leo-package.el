;; leo_package.el
;;
;; Initializes package repositories

(require 'package)

;; Repositories
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize) 

;; Load external packages
(load "powerline.el")

(require 'smex)
(require 'window-numbering)
(require 'company)
(require 'haskell-mode)
(require 'haskell-cabal)
(require 'evil)
(require 'sr-speedbar)
