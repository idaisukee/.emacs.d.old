(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(add-hook 'auto-complete-mode-hook '(lambda ()
									  (define-key ac-mode-map (kbd "C-S-h") 'ac-next)
									  (define-key ac-mode-map (kbd "C-S-t") 'ac-previous)))


(provide 'auto-complete-init)
