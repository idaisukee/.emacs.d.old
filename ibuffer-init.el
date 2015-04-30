(setq ibuffer-saved-filter-groups
      '(("home"
	  ("Org" (or (mode . org-mode)
		     (filename . ".org")))
	  ("php" (or (mode . php-mode)
		     (filename . ".php")))
	  ("elisp" (or (mode . lisp-mode)
		     (filename . ".el")))
	  ("shell" (or (mode . shell-mode)
		     ))
	  ("tpl" (or (mode . tpl-mode)
		     (filename . ".tpl")))
	  ("R" (or (mode . ess-mode)
		   (filename . "EssMode")))
	  ("LaTeX" (or (mode . latex-mode)
		       (filename . "LaTeXMode")))
	  ("Gams" (or (mode . gams-mode)
		      (filename . "GamsMode")))
	  ("Text" (name . ".txt")))))

(add-hook 'ibuffer-mode-hook
	   '(lambda ()
	      (ibuffer-auto-mode 1)
	      (ibuffer-switch-to-saved-filter-groups "home")))
(setq ibuffer-show-empty-filter-groups nil)

(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (define-key ibuffer-mode-map (kbd "C-t") 'previous-line)
	     (define-key ibuffer-mode-map (kbd "<f2>") 'my-buffer-menu2)
	     (define-key ibuffer-mode-map (kbd "M-o") 'find-file)))
;;;	     (define-key ibuffer-mode-map (kbd "") 'previous-line)
;;;	     (global-set-key [f2] 'my-buffer-menu2)
;;;	     (global-unset-key (kbd "o"))))





(provide 'ibuffer-init)
