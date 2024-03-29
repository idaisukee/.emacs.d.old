;(setq org-export-latex-coding-system 'shift_jis)
(setq org-export-latex-date-format "%Y年%m月%d日")
(setq org-export-latex-classes nil)
(add-to-list 'org-export-latex-classes
  '("jsarticle"
    "\\documentclass[a4j]{jsarticle}"
    ("\\section{%s}" . "\\section*{%s}")
    ("\\subsection{%s}" . "\\subsection*{%s}")
    ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
    ("\\paragraph{%s}" . "\\paragraph*{%s}")
    ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
))

(add-to-list 'org-export-latex-classes
  '("jarticle"
    "\\documentclass[a4j]{jarticle}"
    ("\\section{%s}" . "\\section*{%s}")
    ("\\subsection{%s}" . "\\subsection*{%s}")
    ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
    ("\\paragraph{%s}" . "\\paragraph*{%s}")
    ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
))

(add-to-list 'org-export-latex-classes
  '("mine"
    "\\documentclass[a4j]{jarticle}"
    ("\\section{%s}" . "\\section*{%s}")
    ("\\subsection{%s}" . "\\subsection*{%s}")
    ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
    ("\\paragraph{%s}" . "\\paragraph*{%s}")
    ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
))

(add-to-list 'org-export-latex-classes
  '("mine2"
    "\\documentclass[a4j]{jarticle}"
    ("\\section*{%s}" . "\\section*{%s}")
    ("\\subsection*{%s}" . "\\subsection*{%s}")
    ("\\subsubsection*{%s}" . "\\subsubsection*{%s}")
    ("\\paragraph*{%s}" . "\\paragraph*{%s}")
    ("\\subparagraph*{%s}" . "\\subparagraph*{%s}")
))

(setq org-export-latex-packages-alist
  '(("AUTO" "inputenc"  t)
    ("T1"   "fontenc"   t)
    ))

(setq org-latex-to-pdf-process
      '("/usr/bin/platex %f" "/usr/bin/dvipdfmx %b"))


(add-hook 'org-mode-hook
	  '(lambda ()
	     (define-key org-mode-map (kbd "<tab>") 'execute-extended-command)
	     (define-key org-mode-map (kbd "S-<tab>") nil)
	     (define-key org-mode-map (kbd "<backtab>") 'save-buffer)
	     (define-key org-mode-map (kbd "C-<tab>") 'save-buffer)))

(provide 'org-init)


