(defun go-to-the-last-command-line nil
  (interactive)
  (search-backward "daisuke@"))


(add-hook 'shell-mode-hook
	  '(lambda ()
	     (define-key shell-mode-map (kbd "C-S-t") 'comint-previous-input)
	     (define-key shell-mode-map (kbd "C-S-h") 'comint-next-input)
	     (define-key shell-mode-map (kbd "C-d") 'backward-char)
	     (define-key shell-mode-map (kbd "M-t") 'go-to-the-last-command-line)))

;;;(add-hook 'eshell-mode-hook
;;;	  '(lambda ()
;;;	     (define-key eshell-mode-map (kbd "C-t") 'eshell-previous-matching-input-from-input)
;;;	     (define-key shell-mode-map (kbd "C-S-h") 'comint-next-input)
;;;	     (define-key shell-mode-map (kbd "C-d") 'backward-char))
;;;)

(provide 'shell-mode-init)
