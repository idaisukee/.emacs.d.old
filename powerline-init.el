(require 'powerline)

;;; (left) background, color1, color2, color1, background (right)
;;;(powerline-default-theme)
(set-face-attribute 'mode-line nil
;                    :background "OliveDrab3"
;                    :background "OliveDrab"
                    :background "cyan2"
                    :box nil)

(setq powerline-color1 "cyan3")
(setq powerline-color2 "cyan4")


(provide 'powerline-init)
