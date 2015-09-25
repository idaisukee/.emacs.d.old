;;;(load-theme 'manoj-dark t)
(load-theme 'deeper-blue t)
(setq height 140)
(when (eq window-system 'ns)
	(setq height 200))
(set-face-attribute 'default nil
					:family "inconsolata"
					:height height)

(provide 'appearance-init)
