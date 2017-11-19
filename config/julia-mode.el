;;; package --- Summary
;;; Commentary:
;;; Code:

(defvar julia-executable "julia")

(use-package julia-mode
  :defer t)

(use-package julia-repl-mode
  :defer t
  :init
  (progn
    (setq julia-repl-executable julia-executable)
    (add-hook 'julia-mode-hook 'julia-repl-mode)))

(use-package flycheck-julia
  :defer t
  :init
  (progn
    (setq flycheck-julia-executable julia-executable)
    (flycheck-julia-setup)))

(provide 'julia-mode)
;;; julia-mode.el ends here
