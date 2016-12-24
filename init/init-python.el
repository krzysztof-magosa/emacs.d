(use-package elpy
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'python-mode-hook 'elpy-mode)))

(use-package pyvenv
  :ensure t
  :defer t
  :config
  (progn
    (when (file-accessible-directory-p "~/.python-env/py3.4")
      (pyvenv-activate "~/.python-env/py3.4")))
  :init
  (progn
    (add-hook 'python-mode-hook 'pyvenv-mode)))

(use-package pip-requirements
  :ensure t
  :defer t)

(provide 'init-python)
