(use-package web-mode
  :ensure t
  :defer t
  :mode "\\.blade\\.php\\'"
  :mode "\\.phtml\\'"
  :mode "\\.html\\'"
  :config
  (progn
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)))

(use-package scss-mode
  :defer t
  :ensure t
  :mode "\\.sass\\'"
  :config
  (progn
    (setq css-indent-offset 2)))

(use-package js-mode
  :defer t
  :ensure f
  :init
  (progn
    (setq-default js-indent-level 2)))

(use-package css-mode
  :defer t
  :ensure f
  :init
  (progn
    (setq-default css-indent-offset 2)))

(use-package js2-mode
  :defer t
  :ensure t
  :mode "\\.js\\'"
  :init
  (progn
    (setq-default js2-basic-offset 2)))

(use-package vue-mode
  :defer t
  :ensure t
  :mode "\\.vue\\'")

(provide 'init-web)
