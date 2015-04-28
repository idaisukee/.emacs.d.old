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

(provide 'ibuffer-init)