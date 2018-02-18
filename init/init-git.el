(use-package gitconfig-mode
  :ensure t
  :defer t)

(use-package gitignore-mode
  :ensure t
  :defer t)

(use-package magit
  :ensure t
  :defer t
  :bind(("C-x g" . magit-status)))

(use-package git-gutter
  :if window-system
  :ensure t
  :defer t
  :commands git-gutter-mode
  :init
  (progn
    (add-hook 'yaml-mode-hook 'git-gutter-mode)
    (add-hook 'prog-mode-hook 'git-gutter-mode))
  :config
  (progn
    (setq git-gutter:update-interval 2)))

(use-package git-timemachine
  :ensure t
  :defer t)

(provide 'init-git)
