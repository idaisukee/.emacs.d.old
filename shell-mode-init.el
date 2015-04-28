(defun go-to-the-last-command-line nil
  (interactive)
  (search-backward "daisuke@"))


(when (eq window-system 'ns)
;;;  (setq explicit-shell-file-name "/bin/zsh"))
  (setq explicit-shell-file-name "/usr/local/bin/zsh"))
(add-hook 'shell-mode-hook
	  '(lambda ()
	     (define-key shell-mode-map (kbd "C-S-t") 'comint-previous-input)
	     (define-key shell-mode-map (kbd "C-S-h") 'comint-next-input)
	     (define-key shell-mode-map (kbd "C-d") 'backward-char)
	     (define-key shell-mode-map (kbd "M-t") 'go-to-the-last-command-line)))



(add-hook 'shell-mode-hook
          #'(lambda ()
              (setq comint-password-prompt-regexp
                    (replace-regexp-in-string "for \\[\\^:\\]\\+" "for .+"
                                              comint-password-prompt-regexp t t))))


(provide 'shell-mode-init)
