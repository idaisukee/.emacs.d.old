(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(setq mew-fcc "+outbox") ; 送信メールを保存


;;; Mew を使う為の設定
;(autoload 'mew "mew" nil t)
;(autoload 'mew-send "mew" nil t)

;;; Mew の起動時にはメールを取得しないようにする設定
(setq mew-auto-get nil)

;;; メールの取得後、POPサーバにあるメールを残す設定
(setq mew-pop-delete nil)

(setq mew-prog-ssl "/usr/local/bin/stunnel3")
;;; パスワードを表示させないための設定
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

(provide 'mew-init)
