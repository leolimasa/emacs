(require 'flycheck)
(require 'flycheck-elm)
(require 'company)
(require 'elm-mode)

; flycheck
(with-eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup))
