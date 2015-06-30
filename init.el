(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/init-files/")

(require 'el-get-init)

(setq files-to-require
	  (list
;;;	   'keybind-init
;;;	   'misc-init
;;;	   'my-function-init
	   'php-mode))

(append files-to-require
		(mapcar 'intern
				(mapcar 'f-base
						(f-glob "*-init.el" (locate-user-emacs-file "init-files")))))

;;(dolist (file-to-require files-to-require)
;;  (require file-to-require))

(mapcar 'require files-to-require)
