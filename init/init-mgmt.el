(use-package projectile
  :ensure t
  :init
  (progn
    (projectile-global-mode))
  :config
  (progn
    (setq projectile-globally-ignored-files '(
                                              "*.o"
                                              "a.out"
                                              "*.pyc"
                                              "*~"))
    (setq projectile-project-root-files '(".project-root"))
    (setq projectile-project-root-files-top-down-recurring '(".project-root"))
    (setq projectile-project-root-files-bottom-up '(".project-root"))
    (setq projectile-git-command "git ls-files -zco")
    (setq projectile-completion-system 'helm)
    (setq projectile-enable-idle-timer t)))

(provide 'init-mgmt)
