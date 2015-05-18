;; [Facultative] Only if you have installed async.
(add-to-list 'load-path "~/.emacs.d/async")

(add-to-list 'load-path "~/.emacs.d/helm")

(when (require 'helm-config nil t)
  (helm-mode 1)


  (define-key helm-map (kbd "C-b") 'delete-backward-char)
  (define-key helm-map (kbd "C-h") 'helm-next-line)
  (define-key helm-map (kbd "C-t") 'helm-previous-line)
  (define-key helm-map (kbd "C-n") 'forward-char)

  (define-key helm-find-files-map (kbd "C-b") 'delete-backward-char)
  (define-key helm-find-files-map (kbd "C-h") 'helm-next-line)
  (define-key helm-find-files-map (kbd "C-t") 'helm-previous-line)
  (define-key helm-find-files-map (kbd "C-n") 'forward-char)

  (define-key helm-find-files-map (kbd "C-i") 'helm-execute-persistent-action)
  (define-key helm-read-file-map (kbd "C-i") 'helm-execute-persistent-action)

  ;; Emulate `kill-line' in helm minibuffer
  (setq helm-delete-minibuffer-contents-from-point t)
  (defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
	"Emulate `kill-line' in helm minibuffer"
	(kill-new (buffer-substring (point) (field-end)))))

(require 'helm-config)
(provide 'helm-init)
