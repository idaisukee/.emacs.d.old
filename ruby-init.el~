(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
;;;(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
;;;(add-hook 'ruby-mode-hook '(lambda () (inf-ruby-keys)))
(global-font-lock-mode 1)
(setq default-frame-alist (append '(
					;  (foreground-color . "gray")  ;
					;  (background-color . "black") ;
					;  (cursor-color     . "blue")  ;
				    )
				  default-frame-alist))

;; ruby-electric
;;;(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda ()
;;;			     (ruby-electric-mode t)
			     (define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
			     (define-key ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
))

;; rubydb
(autoload 'rubydb "rubydb3x"
  "run rubydb on program file in buffer *gud-file*.
the directory containing file becomes the initial working directory
and source-file directory for your debugger." t)


;; ruby-block
;(require 'ruby-block)
;(ruby-block-mode t)

;; ミニバッファに表示し, かつ, オーバレイする.
(setq ruby-block-highlight-toggle t)

(setq ruby-indent-level 2)
(setq ruby-indent-tabs-mode nil)

(provide 'ruby-init)
