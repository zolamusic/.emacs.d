;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

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
