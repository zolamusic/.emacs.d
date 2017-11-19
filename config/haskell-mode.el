;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package intero
  :ensure t)

(use-package haskell-mode
  :ensure t
  :init
  (add-hook 'haskell-mode-hook 'intero-mode))

(provide 'haskell-mode)
;;; haskell-mode.el ends here
