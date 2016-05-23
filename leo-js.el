; Fixes autocomplete
(add-hook 'js2-mode-hook 'ac-js2-setup-auto-complete-mode)

(add-hook 'js2-mode-hook
          (defun my-js2-mode-setup ()
            (flycheck-mode t)
            (when (executable-find "eslint")
              (flycheck-select-checker 'javascript-eslint))))


; Enables tern
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

; npm install tern -g
; npm install eslint -g 
