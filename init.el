;;; package --- Summary
;;; Commentary:
;;; Code:
(package-initialize)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(load-file "~/.emacs.d/config/global-mode.el")
(load-file "~/.emacs.d/config/lisp-mode.el")
(load-file "~/.emacs.d/config/haskell-mode.el")
(load-file "~/.emacs.d/config/c-common-mode.el")
(load-file "~/.emacs.d/config/c++-mode.el")
(load-file "~/.emacs.d/config/markdown-mode.el")
(load-file "~/.emacs.d/config/latex-mode.el")
(load-file "~/.emacs.d/config/julia-mode.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-julia julia-repl julia-mode intero auctex hlinum flycheck-clojure clojure-mode-extra-font-locking cider clojure-mode yaml-mode markdown-mode rtags flycheck-rtags ivy-rtags company-rtags cmake-ide cmake-mode haskell-mode rainbow-delimiters smartparens srefactor nyan-mode neotree magit company flycheck ivy smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
;;; init.el ends here
