;; leo_visuals.el
;;
;; Initializes everything that has to do with visuals

;; Main code theme
;;(load-theme 'tango-dark)
(load-theme 'misterioso)

;; Font
;(set-face-font 'default "Source Code Pro Medium-11:antialias=natural")
(setq-default line-spacing 2)

;;(set-face-font 'default "Inconsolata-12:antialias=natural")
;;(set-face-font 'default "Menlo-12:antialias=natural")
(set-frame-font "Menlo:pixelsize=16")

;; Modeline
(setq sml/theme 'powerline)
(setq powerline-arrow-shape 'curve)
(setq powerline-default-separator-dir '(right . left))
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

;; Disable toolbar
(tool-bar-mode -1)

;; Disable scroolbar
(scroll-bar-mode -1)

;; Disable menu bar
(menu-bar-mode -1)

;; Disable line wrapping
(toggle-truncate-lines)

;; Save desktop state on quit
;; (desktop-save-mode 1)

;; Enable line numbers
(global-linum-mode 1)

;; Disable annoying beep
(setq ring-bell-function 'ignore)

;; Company mode colors
(require 'color)
(let ((bg (face-attribute 'default :background)))
  (custom-set-faces
   `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg -5)))))
   `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg -30)))))
   `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
   `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
   `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))

;; Powerline
(require 'powerline)
(powerline-center-evil-theme)

