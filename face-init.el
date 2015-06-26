(set-face-background 'hl-line "cyan4")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(button ((t (:background "white" :foreground "black" :weight light))))
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt :foreground "cyan1" :inverse-video t))))
 '(completions-common-part ((t (:inherit default :background "black" :foreground "yellow" :slant normal :weight normal :height 150 :width normal))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "HotPink4"))))
 '(font-lock-comment-face ((t (:foreground "dark turquoise" :slant oblique))))
 '(font-lock-constant-face ((t (:foreground "violet" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "orange" :height 1.1))))
 '(font-lock-string-face ((t (:foreground "hot pink"))))
 '(font-lock-variable-name-face ((t (:foreground "DodgerBlue1"))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :background "black" :foreground "white"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#0000ff"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#0000ff"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#0000ff"))))
 '(trailing-whitespace ((t (:background "#222222"))))
 '(twittering-username-face ((t (:foreground "orange" :underline t))))
 '(whitespace-space ((t (:background "black" :foreground "darkgray"))))
 '(whitespace-tab ((t (:background "black" :foreground "darkgray")))))

(provide 'face-init)
