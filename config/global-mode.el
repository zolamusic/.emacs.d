;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package smex
  :ensure t
  :config
  (smex-initialize))

(use-package ivy-smex
  :load-path "github/ivy-smex/"
  :bind ("M-x" . ivy-smex))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

(use-package company
  :ensure t
  :config
  (global-company-mode))

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold nil)
  (setq doom-themes-enable-italic t)
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config))

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode))
;;(add-hook 'c++-mode-hook
;;	  (lambda() (setq flycheck-clang-language-standard "c++14")))

(use-package magit
  :ensure t
  :bind
  ("C-x g" . magit-status))

(use-package neotree
  :ensure t
  :bind ("<f8>" . neotree-toggle)
  :config
  (setq neo-theme 'ascii)
  (setq neo-smart-open t)
  (setq neo-window-fixed-size nil)
  (setq-default neo-show-hidden-files nil))

(use-package nyan-mode
  :ensure t
  :init
  (nyan-mode 0))

(use-package hlinum
  :ensure t
  :config
  (progn (hlinum-activate)))

(use-package yaml-mode
  :ensure t)

(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(add-hook 'prog-mode-hook 'linum-mode)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;(menu-bar-mode -1)
;;(tool-bar-mode -1)
;;(scroll-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-screen t)

(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)

(setq make-backup-files nil)

(set-language-environment "Korean")
(prefer-coding-system 'utf-8)
(global-set-key (kbd "<S-kana>") 'toggle-input-method)

(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)

(set-face-attribute 'default nil :family "Fixedsys Excelsior 3.01 L2")
(set-face-attribute 'default nil :height 120)
(set-fontset-font t 'hangul (font-spec :name "Neodunggeunmo")) ;; 한글폰트조아
;(setq default-frame-alist '((font . "Neodunggeunmo-12")))

(set-face-bold 'bold nil)

(provide 'global-mode)
;;; global-mode.el ends here
