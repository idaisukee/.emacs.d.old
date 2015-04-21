(add-hook 'php-mode-hook
	  '(lambda ()
	     (define-key php-mode-map (kbd "C-c c") 'smart-compile)
	     (define-key php-mode-map (kbd "C-d") 'backward-char)
;;;	     (define-key php-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
))


(provide 'php-mode-init)
