
; flycheck
(add-hook 'flycheck-mode-hook 'flycheck-elm-setup)
(add-hook 'after-init-hook #'global-flycheck-mode)

; Company autocompletion
; Needs npm install elm-oracle
; Triggered by C-c C-t
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-elm))
(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
