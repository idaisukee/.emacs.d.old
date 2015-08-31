(defun move-line-to-opposite-window nil
  (interactive)
  (kill-line)
  (yank)
  (next-line)
  (beginning-of-line)
  (other-window 1)
  (yank)
  (newline)
  (beginning-of-line)
  (other-window 1))

(defun my-buffer-menu nil
  (interactive)
  (buffer-menu-other-window)
  (other-window 0))

(defun my-buffer-menu2 nil
  (interactive)
  (ibuffer-other-window)
  (other-window 0))

(defun open-init-el nil
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun my-kill-region nil
  (interactive)
  (kill-region (point) (mark)))

(defun my-copy-region-as-kill nil
  (interactive)
  (copy-region-as-kill (point) (mark)))




(provide 'my-function-init)

