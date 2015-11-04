;; php
(use-package php-mode
  :ensure t
  :defer t
  :commands php-mode
  :mode "\\.php\\'"
  :config
  (progn
    (add-hook 'php-mode-hook 'php-enable-symfony2-coding-style)))

(use-package apache-mode
  :ensure t
  :defer t)

(use-package nginx-mode
  :ensure t
  :defer t)

(use-package markdown-mode
  :ensure t
  :defer t
  :commands markdown-mode)


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

(use-package yaml-mode
  :defer t
  :ensure t
  :mode "\\.yaml\\'"
  :mode "ansible/group_vars/.*"
  :mode "ansible/host_vars/.*")

(use-package json-mode
  :defer t
  :ensure t
  :mode "\\.json\\'")

(use-package js2-mode
  :defer t
  :ensure t
  :mode "\\.js\\'"
  :init
  (progn
    (setq-default js2-basic-offset 2)))

(use-package cmake-mode
  :defer t
  :ensure t
  :mode "CMakeLists.txt\\'\\|\\.cmake\\'")

(use-package go-mode
  :defer t
  :ensure t
  :mode "\\.go\\'")

(use-package sh-script
  :ensure t
  :defer t
  :commands sh-mode
  :mode ("\\.zsh\\'" . sh-mode))

(use-package puppet-mode
  :ensure t
  :defer t)

(use-package jinja2-mode
  :ensure t
  :defer t)

(use-package org
  :ensure t
  :defer t
  :config
  (progn
    (setq-default org-startup-folded "showeverything")))

(use-package polymode
  :ensure t
  :defer t
  :commands poly-markdown-mode
  :mode ("\\.md\\'" . poly-markdown-mode))

(use-package elpy
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'python-mode-hook 'elpy-mode)))

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)))

(use-package move-text
  :ensure t
  :defer t
  :bind (
         ("<ESC> <up>" . move-text-up)
         ("<ESC> <down>" . move-text-down)))

;; keep cursor in the same place between sessions
(use-package saveplace
  :init
  (progn
    (setq-default save-place t)
    (setq save-place-file (expand-file-name ".places" user-emacs-directory))))

(use-package autopair
  :ensure t
  :defer t
  :config
  (progn
    (setq autopair-autowrap t))
  :init
  (progn
    (add-hook 'prog-mode-hook 'autopair-global-mode)))

(use-package smooth-scrolling
  :ensure t)

;;(use-package emacs-eclim
;;  :ensure t
;;  :defer t
;;  :init
;;  (progn
;;    (autoload 'company-emacs-eclim "company-emacs-eclim" "" t nil)
;;    (setq eclim-eclipse-dirs '("~/eclipse"))
;;    (setq eclim-executable "~/eclipse/eclim")
;;    (add-hook 'java-mode-hook 'eclim-mode))
;;  :config
;;  (progn
;;    (require 'eclimd)
;;    (require 'company-emacs-eclim)))

(provide 'init-modes)
