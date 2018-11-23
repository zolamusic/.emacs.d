;;; package --- Summary
;;; Commentary:
;;; Code:
(package-initialize)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(load-file "~/.emacs.d/config/global-mode.el")
;(load-file "~/.emacs.d/config/lisp-mode.el")
(load-file "~/.emacs.d/config/haskell-mode.el")
;(load-file "~/.emacs.d/config/c-common-mode.el")
;(load-file "~/.emacs.d/config/c++-mode.el")
;(load-file "~/.emacs.d/config/markdown-mode.el")
;(load-file "~/.emacs.d/config/latex-mode.el")
;(load-file "~/.emacs.d/config/julia-mode.el")

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-quickhelp-color-background "#D0D0D0")
 '(company-quickhelp-color-foreground "#494B53")
 '(custom-enabled-themes (quote (base16-onedark)))
 '(custom-safe-themes
   (quote
    ("f6f5d5adce1f9a764855c9730e4c3ef3f90357313c1cae29e7c191ba1026bc15" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "c9f102cf31165896631747fd20a0ca0b9c64ecae019ce5c2786713a5b7d6315e" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" default)))
 '(package-selected-packages
   (quote
    (base16-theme one-themes yaml-mode hlinum flycheck doom-themes company ivy smex use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
