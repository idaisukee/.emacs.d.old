;;;; (require 'w3m)


(require 'cl)
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/auto-install")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(add-to-list 'load-path "~/.emacs.d/emacs-w3m-1.4.4")
(add-to-list 'load-path "/usr/share/emacs24/site-lisp/ddskk")
(add-to-list 'load-path "~/.emacs.d/twittering-mode-3.0.0")

(global-whitespace-mode -1)
(blink-cursor-mode -1)
(global-hl-line-mode 1)

(savehist-mode 1)
(show-paren-mode 1)
;;;(display-time)
(line-number-mode 1)
(column-number-mode 1)
(transient-mark-mode 1)
(setq message-log-max 10000)
(setq enable-recursive-minibuffers t)
(setq use-dialog-box nil)
(defalias 'message-box 'message)
(setq history-length 1000)
(setq echo-keystrokes 0.1)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")




(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (define-key ibuffer-mode-map (kbd "C-t") 'previous-line)
	     (define-key ibuffer-mode-map (kbd "<f2>") 'my-buffer-menu2)
	     (define-key ibuffer-mode-map (kbd "M-o") 'find-file)))
;;;	     (define-key ibuffer-mode-map (kbd "") 'previous-line)
;;;	     (global-set-key [f2] 'my-buffer-menu2)
;;;	     (global-unset-key (kbd "o"))))





(defun open-init-el nil
  (interactive)
  (find-file "~/.emacs.d/init.el"))


;;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
(require 'auto-install)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

;;;(powerline-default-theme)
;(add-to-list 'load-path "~/.emacs.d/site-lisp/")
;(require 'lispxmp)
;(require 'package)
;(setq package-user-dir "~/.emacs.d/elisp/elpa/")
;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(package-initialize)

;(require 'init-loader)
;(init-loader-load "~/.emacs.d/mine")

(require 'open-junk-file)
(require 'alpaca)
;;;(require 'php-mode)
(load "php-mode")

(setq eshell-cmpl-ignore-case t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


;;;(require 'anything-startup)
;;;(require 'auto-install)
;;;(require 'twit)
;;(setq auto-install-directory "~/.emacs.d/auto-install/")
;;(auto-install-update-emacswiki-package-name t)
;;(auto-install-compatibility-setup)             ; 互換性確保

(setq open-junk-file-format "~/program/junk/%Y/%m/%Y-%m-%d-%H%M%S.")









;;;(aset keyboard-translate-table ?\<tab> ?\M-x)
;;;(if window-system
;;;  )

(setq scroll-step 1)
(setq inhibit-startup-message t)
 




(defun my-buffer-menu nil
  (interactive)
  (buffer-menu-other-window)
  (other-window 0))

(defun my-buffer-menu2 nil
  (interactive)
  (ibuffer-other-window)
  (other-window 0))


(add-to-list 'load-path "~/.emacs.d/elisp/")


(require 'smart-compile)

(require 'linum-init)
;(exec-path-from-shell-initialize)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))




(require 'skk-init)
(require 'keybind-init)
(require 'twit-init)
(require 'shell-mode-init)
(require 'org-init)
(require 'appearance-at-x-init)
(require 'appearance-at-ns-init)
(require 'alias-init)
(require 'yatex-init)
(require 'powerline-init)
(require 'dired-init)
(require 'ruby-init)
(require 'php-mode-init)
;(require 'package-init)

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
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt :foreground "cyan1" :inverse-video t))))
 '(completions-common-part ((t (:inherit default :background "black" :foreground "yellow" :slant normal :weight normal :height 150 :width normal))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "HotPink4"))))
 '(font-lock-comment-face ((t (:foreground "dark turquoise" :slant oblique))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :background "black" :foreground "white"))))
 '(twittering-username-face ((t (:foreground "orange" :underline t))))
 '(whitespace-space ((t (:background "black" :foreground "darkgray"))))
 '(whitespace-tab ((t (:background "black" :foreground "darkgray")))))

(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(setq mew-fcc "+outbox") ; 送信メールを保存
(setq exec-path (cons "/usr/bin" exec-path))


(setq el-get-dir "~/.emacs.d/elisp/el-get/")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)
(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")
