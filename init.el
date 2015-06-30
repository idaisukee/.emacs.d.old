(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/init-files/")


(setq list-of-files-to-require
	  (list
;;;	   'el-get-init
;;;	   'keybind-init
;;;	   'misc-init
;;;	   'my-function-init
	   'php-mode))


(setq init-files-symbol
	  (intern (f-base
	   (f-glob "*-init.el" (locate-user-emacs-file "")))))
	  
(append 'list-of-files-to-require
		(mapcar 

(dolist (file-to-require list-of-files-to-require)
  (require file-to-require))

