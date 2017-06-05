(use-package helm
  :ensure t
  :diminish helm-mode
  :commands helm-make-source
  :config
  (progn
    (setq helm-ff-newfile-prompt-p nil)
    (helm-mode))
  :bind(
         ("M-x" . helm-M-x)
         ("C-x b" . helm-buffers-list)
         ("C-x C-f" . helm-find-files)
         ("C-c k" . helm-show-kill-ring)))


(use-package helm-ag
  :ensure t
  :defer t
  :bind (
         ("C-c g" . helm-do-ag-project-root))
  :config
  (progn
    (setq helm-ag-command-option "--hidden --skip-vcs-ignores")))

(use-package helm-codesearch
  :ensure t
  :defer t
  :bind(
        ("C-c h f" . helm-codesearch-find-file)
        ("C-c h t" . helm-codesearch-find-pattern)
        ("C-c h I" . helm-codesearch-create-csearchindex)))

(use-package helm-flycheck
  :ensure t
  :defer t
  :bind ("C-c 1" . helm-flycheck))

(use-package helm-gtags
  :ensure t
  :defer t
  :diminish helm-gtags-mode
  :bind("M-." . helm-gtags-find-tag)
  :init
  (progn
    (add-hook 'prog-mode-hook 'helm-gtags-mode))
  :config
  (progn
    (setq helm-gtags-auto-update t)
    (setq helm-gtags-use-input-at-cursor t)))

(use-package projectile
  :ensure t
  :init
  (progn
    (projectile-mode))
  :config
  (progn
    (setq projectile-globally-ignored-files '(
                                              "*.o"
                                              "a.out"
                                              "*.pyc"
                                              "*~"
                                              ".#*"
                                              "#*#"))
    (setq projectile-project-root-files '(".project-root"))
    (setq projectile-project-root-files-top-down-recurring '(".project-root"))
    (setq projectile-project-root-files-bottom-up '(".project-root"))
    (setq projectile-git-command "git ls-files -zco")
    (setq projectile-completion-system 'helm)
    (setq projectile-enable-idle-timer t)))

(provide 'init-mgmt)
