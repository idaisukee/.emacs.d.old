(setq el-get-dir "~/.emacs.d/elisp/el-get/")

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (el-get 'sync)
;; (add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

(provide 'el-get-init)
