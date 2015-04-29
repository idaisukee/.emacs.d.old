;;;; (require 'w3m)
(require 'cl)
(add-to-list 'load-path "~/.emacs.d/")
(require 'load-path-init)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")


;;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
;;;(require 'auto-install)
;;;(auto-install-update-emacswiki-package-name t)
;;;(auto-install-compatibility-setup)

;;;(powerline-default-theme)

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
;(require 'eshell-mode-init)
(require 'org-init)
(require 'appearance-at-x-init)
(require 'appearance-at-ns-init)
(require 'alias-init)
(require 'yatex-init)
(require 'powerline-init)
(require 'dired-init)
(require 'ruby-init)
(require 'php-mode-init)
(require 'my-function-init)
(require 'ibuffer-init)
(require 'misc-init)
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

(setq exec-path (cons "/usr/bin" exec-path))


(setq el-get-dir "~/.emacs.d/elisp/el-get/")

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (el-get 'sync)
;; (add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")
