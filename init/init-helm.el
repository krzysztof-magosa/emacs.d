(use-package helm
  :ensure t
  :defer t
  :commands helm-make-source
  :config
  (progn
    (use-package helm-flx
      :ensure t
      :config
      (progn
        (helm-flx-mode +1)))
    (use-package helm-fuzzier
      :ensure t
      :config
      (progn
        (helm-fuzzier-mode 1))))
  :bind (
         ("M-x" . helm-M-x)
         ("C-x b" . helm-buffers-list)
         ("C-x C-f" . helm-find-files)))


(use-package helm-git-grep
  :ensure t
  :defer t
  :bind("C-c g" . helm-git-grep))

(use-package helm-codesearch
  :ensure t
  :defer t
  :bind(
        ("C-c h f" . helm-codesearch-find-file)
        ("C-c h t" . helm-codesearch-find-pattern)
        ("C-c h I" . helm-codesearch-create-csearchindex)))

(use-package helm-projectile
  :ensure t
  :defer t)

(use-package helm-flycheck
  :ensure t
  :defer t
  :bind ("C-c 1" . helm-flycheck))

(use-package helm-gtags
  :ensure t
  :defer t
  :bind("M-." . helm-gtags-find-tag)
  :init
  (progn
    (add-hook 'prog-mode-common-hook 'helm-gtags-mode))
  :config
  (progn
    (setq helm-gtags-auto-update t)
    (setq helm-gtags-use-input-at-cursor t)))

(provide 'init-helm)
