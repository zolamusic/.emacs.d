;;; package --- Summary
;;; Commentary:
;;; Code:
(package-initialize)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(load-file "~/.emacs.d/config/global-mode.el")
(load-file "~/.emacs.d/config/lisp-mode.el")
;(load-file "~/.emacs.d/config/haskell-mode.el")
;(load-file "~/.emacs.d/config/c-common-mode.el")
;(load-file "~/.emacs.d/config/c++-mode.el")
;(load-file "~/.emacs.d/config/markdown-mode.el")
;(load-file "~/.emacs.d/config/latex-mode.el")
;(load-file "~/.emacs.d/config/julia-mode.el")

(provide 'init)
;;; init.el ends here
