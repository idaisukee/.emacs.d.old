(when (eq window-system 'ns)

;;;(load-theme 'wombat t)
  (load-theme 'molokai t)
;;;  (enable-theme 'molokai)
  
;;  Monaco 12pt をデフォルトにする
  (set-face-attribute 'default nil
		      :family "Andale mono"
		      :height 150)
;;日本語をヒラギノ角ゴProNにする
  (set-fontset-font "fontset-default"		    'japanese-jisx0208
		    '("Hiragino Mincho ProN"))
;;半角カナをヒラギノ角ゴProNにする
  (set-fontset-font "fontset-default"
		    'katakana-jisx0201
		    '("Hiragino Maru Gothic ProN"))
  ;;for Japanese
  (set-language-environment 'Japanese)
  (set-default-coding-systems 'utf-8-unix)
  (set-terminal-coding-system 'utf-8-unix)
  (set-keyboard-coding-system 'sjis-mac)
  (set-clipboard-coding-system 'sjis-mac)
  (setq-default buffer-file-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (add-to-list 'default-frame-alist '(font . "fontset-default"))
)

(provide 'appearance-at-ns-init)
