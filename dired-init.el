(add-hook 'dired-mode-hook
	  '(lambda ()
	     (define-key dired-mode-map (kbd "C-t") 'dired-previous-line)))

(setq dired-dwim-target t)


(provide 'dired-init)
