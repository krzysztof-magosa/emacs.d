(use-package flycheck
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'flycheck-mode)
    (add-hook 'yaml-mode-hook 'flycheck-mode))
  :config
  (progn
    (setq flycheck-phpcs-standard "PSR2")
    (add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))))

(provide 'init-flycheck)
