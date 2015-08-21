(global-unset-key (kbd "C-o"))
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "C-<insert>"))

(global-set-key (kbd "C-o o") 'skk-hiragana-set)
(global-set-key (kbd "C-o e") 'skk-katakana-set)
(global-set-key (kbd "C-o u") 'skk-latin-mode)
(global-set-key "\C-z" nil)
(global-set-key (kbd "C-z") 'skk-toggle-kana-and-latin)


(global-set-key (kbd "C-S-v") 'scroll-down-command)

(global-set-key [backtab] 'save-buffer)
(global-set-key (kbd "C-<tab>") 'save-buffer)

(global-set-key (kbd "C-a") 'beginning-of-line)
(global-set-key (kbd "C-<") 'beginning-of-buffer)
(global-set-key (kbd "C->") 'end-of-buffer)
(global-set-key "\C-x\C-h" 'skk-mode)
(global-set-key (kbd "C-S-u") 'skk-mode)
(global-set-key (kbd "C-x j") 'open-junk-file)
(global-unset-key [tab])
(global-unset-key (kbd "M-c"))
(global-unset-key (kbd "C-x C-f"))
(global-unset-key [f10])
(global-set-key (kbd "C-b") 'delete-backward-char)
(global-set-key (kbd "C-S-b") 'backward-kill-word)
(global-set-key (kbd "C-S-k") 'move-line-to-opposite-window)

(global-set-key (kbd "C-S-s") 'isearch-backward)

(add-hook 'isearch-mode-hook '(lambda ()
				(define-key isearch-mode-map (kbd "C-S-s") 'isearch-repeat-backward)))
(global-unset-key (kbd "C-\\"))
(global-unset-key (kbd "C--"))

(global-set-key [f1] 'delete-other-windows)
;;;(global-set-key [f2] 'my-buffer-menu)
(global-set-key [f2] 'my-buffer-menu2)
(global-set-key [f3] 'other-window)
(global-set-key [f4] 'open-init-el)
(global-set-key [f5] 'lispxmp)
(global-set-key [f6] 'shell)
(global-set-key (kbd "C-<f6>") 'eshell)
(global-set-key (kbd "<f7>") 'toggle-and-print-skk-kutouten-type)



;;;(global-set-key [f7] 'eshell)
(global-set-key [f8] 'toggle-and-print-jitai)
(global-set-key (kbd "C-<f8>") 'show-lub)
;;;(global-set-key [f9] 'save-buffer)
(global-set-key [f10] 'delete-window)
(global-set-key (kbd "S-<muhenkan>") 'delete-window)
;;;(global-set-key [tab] 'helm-M-x)
(global-set-key [left] 'backward-char)
(global-set-key [right] 'forward-char)
;;;(global-set-key (kbd "S-<left>") 'backward-kill-word)
(global-set-key [up] 'previous-line)
(global-set-key [down] 'next-line)


(global-set-key (kbd "C-r") 'delete-char)
(global-set-key (kbd "C-S-r") 'kill-word)
(global-set-key (kbd "C-S-k")  'kill-sentence)
(global-set-key (kbd "C-d") 'backward-char)
(global-set-key (kbd "C-S-d") 'backward-word)
(global-set-key (kbd "C-h") 'next-line)
(global-set-key (kbd "C-t") 'previous-line)
(global-set-key (kbd "C-n") 'forward-char)
(global-set-key (kbd "M-o") 'find-file)
(global-set-key (kbd "C-S-d") 'backward-word)
(global-set-key (kbd "C-S-n") 'forward-word)
(global-unset-key (kbd "C-S-h"))
(global-unset-key (kbd "C-S-t"))
(global-set-key (kbd "M-o") 'find-file)
;;(global-set-key (kbd "C-N") 'forward-word)
(global-set-key (kbd "C-S-w") 'save-buffers-kill-terminal)
(global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "C-_"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-f"))

(global-unset-key (kbd "C-u"))

(define-key minibuffer-local-map (kbd "C-t") 'previous-history-element)
(define-key minibuffer-local-map (kbd "C-h") 'next-history-element)


;; (makunbound 'overriding-minor-mode-map)
(define-minor-mode overriding-minor-mode
  "force keybinds"             ; description
  t                                     ; enable default
  ""                                    ; display nothing in the modeline
  `((,(kbd "C-t") . previous-line)
	(,(kbd "C-@") . undo)
	(,(kbd "C-u") . end-of-line)
	(,(kbd "C-o") . scroll-up-command)
	(,(kbd "C-e") . scroll-down-command)
	(,(kbd "<tab>") . execute-extended-command)
	))




(provide 'keybind-init)
