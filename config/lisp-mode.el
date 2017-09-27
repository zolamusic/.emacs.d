;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package smartparens
  :ensure t
  :init
  (add-hook 'lisp-mode-hook #'smartparens-mode)
  (add-hook 'elisp-mode-hook #'smartparens-mode)
  (add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
  (add-hook 'scheme-mode-hook #'smartparens-mode)
  (add-hook 'clojure-mode-hook #'smartparens-mode)
  (add-hook 'cider-repl-mode-hook #'smartparens-mode)
  :config
  (sp-pair "'" nil :actions :rem))

(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package scheme
  :mode
  (("\\.ss\\'" . scheme-mode)
   ("\\.scm\\'" . scheme-mode))
  :ensure t)

(use-package clojure-mode
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'subword-mode)
  (add-hook 'clojure-mode-hook
	    (lambda ()
	      (setq inferior-lisp-program "lein repl")
	      (font-lock-add-keywords
	       nil
	       '(("(\\(facts?\\)"
		  (1 font-lock-keyword-face))
		 ("(\\(background?\\)"
		  (1 font-lock-keyword-face))))
	      (define-clojure-indent (fact 1))
	      (define-clojure-indent (facts 1)))))

(use-package clojure-mode-extra-font-locking
  :ensure t)

(use-package cider
  :ensure t
  :config
  (setq cider-repl-pop-to-buffer-on-connect t)
  (setq cider-show-error-buffer t)
  (setq cider-auto-select-error-buffer t)
  (setq cider-repl-history-file "~/.emacs.d/cider-history")
  (setq cider-repl-wrap-history t))

(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs.*$" . clojure-mode))
(add-to-list 'auto-mode-alist '("lein-env$" . clojure-mode))

(provide 'lisp-mode)
;;; lisp-mode.el ends here
