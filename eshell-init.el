;;;(add-hook 'eshell-mode-hook
;;;	  '(lambda ()
;;;	     (define-key eshell-mode-map (kbd "C-t") 'eshell-previous-matching-input-from-input)
;;;	     (define-key shell-mode-map (kbd "C-S-h") 'comint-next-input)
;;;	     (define-key shell-mode-map (kbd "C-d") 'backward-char))
;;;)

(provide 'eshell-mode-init)
