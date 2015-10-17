(use-package helm
  :ensure t
  :defer t
  :bind (
         ("M-x" . helm-M-x)
         ("C-x b" . helm-buffers-list)
         ("C-x C-f" . helm-find-files)))

(use-package helm-git-grep
  :ensure t
  :defer t
  :bind("C-c g" . helm-git-grep))

(use-package helm-projectile
  :ensure t
  :defer t)

(use-package helm-flycheck
  :ensure t
  :defer t
  :bind ("C-c 1" . helm-flycheck))

(provide 'init-helm)
