;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package cmake-mode
  :ensure t
  :mode ("CMakeLists.txt'" . cmake-mode)
  :config
  (setq cmake-tab-width 4))

(use-package rtags
  :ensure t
  :bind ("C-;" . company-rtags)
  :config
  (setq rtags-path "~/.emacs.d/elpa/rtags-20170919.1345/rtags/bin/")
  (add-hook 'c-mode-common-hook 'rtags-start-process-unless-running)
  (setq rtags-autostart-diagnostics t)
  (setq rtags-completions-enabled t)
  (rtags-diagnostics))

(use-package ivy-rtags
  :ensure t
  :config
  (setq rtags-display-result-backend 'ivy))

(use-package flycheck-rtags
  :if (not (eq system-type 'ms-dos))
  :ensure t
  :config
  (defun c++-mode-rtags-hook ()
    (interactive)
    (flycheck-select-checker 'rtags))
  :init
  (add-hook 'c-mode-common-hook #'c++-mode-rtags-hook))

(use-package company-rtags
  :ensure t
  :config
  (add-hook 'c-mode-common-hook
	    (lambda ()
	      (add-to-list 'company-backends 'company-rtags))))

(use-package cmake-ide
  :ensure t
  :config
  (cmake-ide-setup))

(setq c-default-style "bsd")

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (setq tab-width 4
		  indent-tabs-mode nil
		  indent-level 4
		  c-basic-offset 4)))

(provide 'c-common-mode)
;;; c-common-mode.el ends here
