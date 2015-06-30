((dash status "installed" recipe
	   (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
		 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
				("el-get.*\\.el$" "methods/")
				:features el-get :post-init
				(when
					(memq 'el-get
						  (bound-and-true-p package-activated-list))
				  (message "Deleting melpa bootstrap el-get")
				  (unless package--initialized
					(package-initialize t))
				  (when
					  (package-installed-p 'el-get)
					(let
						((feats
						  (delete-dups
						   (el-get-package-features
							(el-get-elpa-package-directory 'el-get)))))
					  (el-get-elpa-delete-package 'el-get)
					  (dolist
						  (feat feats)
						(unload-feature feat t))))
				  (require 'el-get))))
 (f status "installed" recipe
	(:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
		   (s dash)
		   :type github :pkgname "rejeep/f.el"))
 (s status "installed" recipe
	(:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el")))
