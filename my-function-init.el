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


(provide 'my-function-init)

