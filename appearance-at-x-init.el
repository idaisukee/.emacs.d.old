(when (eq window-system 'x)
;;;(load-theme 'deeper-blue t)
;;;(load-theme 'tango t)
;;;(load-theme 'misterioso t)
;;;(load-theme 'wheatgrass t)
  (load-theme 'manoj-dark t)

;;;(load-theme 'light-blue t)
  (set-face-attribute 'default nil
;;;		    :family "Liberation Mono"
;;;		    :family "Courier 10 Pitch"
		      :family "inconsolata"
;;;		    :family "Dejavu Sans Mono"
;;;		    :family "Nimbus Mono L"
		      :height 150))
;; 日本語を
;;;  (set-fontset-font "fontset-default"
;;;		    'japanese-jisx0208
;;;		    '("IPAMincho"))

(set-fontset-font "fontset-default"
		  'japanese-jisx0208
;;;		  '("ヒラギノ角ゴ ProN W3")
		  '("Migu 1M"))

(provide 'appearance-at-x-init)
