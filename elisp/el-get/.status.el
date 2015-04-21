((apel status "installed" recipe
       (:name apel :website "http://www.kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/APEL/" :description "APEL (A Portable Emacs Library) is a library to support to write portable Emacs Lisp programs." :type github :pkgname "wanderlust/apel" :build
	      (mapcar
	       (lambda
		 (target)
		 (list el-get-emacs
		       (split-string "-batch -q -no-site-file -l APEL-MK -f")
		       target "prefix" "site-lisp" "site-lisp"))
	       '("compile-apel" "install-apel"))
	      :load-path
	      ("site-lisp/apel" "site-lisp/emu")))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el"))
 (flim status "installed" recipe
       (:name flim :description "A library to provide basic features about message representation or encoding" :depends apel :type github :branch "flim-1_14-wl" :pkgname "wanderlust/flim" :build
	      (mapcar
	       (lambda
		 (target)
		 (list el-get-emacs
		       (mapcar
			(lambda
			  (pkg)
			  (mapcar
			   (lambda
			     (d)
			     `("-L" ,d))
			   (el-get-load-path pkg)))
			'("apel"))
		       (split-string "-batch -q -no-site-file -l FLIM-MK -f")
		       target "prefix" "site-lisp" "site-lisp"))
	       '("compile-flim" "install-flim"))
	      :load-path
	      ("site-lisp/flim")))
 (hatena-diary status "installed" recipe
	       (:name hatena-diary :type git :depends flim :url "https://gist.github.com/4465244.git")))
