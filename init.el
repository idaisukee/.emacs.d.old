
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

(setq list-of-files-to-require
	  (list
	   'el-get-init
	   'keybind-init
	   'misc-init
	   'my-function-init
	   'php-mode))

(dolist (file-to-require list-of-files-to-require)
  (require file-to-require))

