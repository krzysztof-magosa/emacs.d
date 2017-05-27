(use-package markdown-mode
  :ensure t
  :defer t
  :commands markdown-mode)

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

(use-package cmake-mode
  :defer t
  :ensure t
  :mode "CMakeLists.txt\\'\\|\\.cmake\\'")

(use-package jinja2-mode
  :ensure t
  :defer t
  :mode "\\.j2\\'")

(use-package bison-mode
  :ensure t
  :defer t)

(use-package haxor-mode
  :ensure t
  :defer t
  :mode ("\\.hax\\'" . haxor-mode))

(use-package evil-numbers
  :ensure t
  :defer t
  :bind ("C-c =" . evil-numbers/inc-at-pt) ; so i don't have to press shift ;)
  :bind ("C-c +" . evil-numbers/inc-at-pt)
  :bind ("C-c -" . evil-numbers/dec-at-pt))

(use-package whitespace-cleanup-mode
  :ensure t
  :init
  (progn
    (add-hook 'prog-mode-hook 'whitespace-cleanup-mode)
    (add-hook 'yaml-mode-hook 'whitespace-cleanup-mode)
    (defalias 'wc 'whitespace-cleanup)))

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

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
    (add-hook 'c++-mode-hook 'rainbow-delimiters-mode)))

(use-package rainbow-mode
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'css-mode-hook 'rainbow-mode)))

(use-package rainbow-identifiers
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'rainbow-identifiers-mode)))

(use-package cff
  :ensure t
  :defer t
  :bind(
        ("M-o" . cff-find-other-file)))

(use-package highlight-numbers
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'highlight-numbers-mode)))

(use-package move-text
  :ensure t
  :defer t
  :bind (
         ("<ESC> <up>" . move-text-up)       ;; alt+up
         ("<M-up>" . move-text-up)
         ("<ESC> <down>" . move-text-down)   ;; alt+down
         ("<M-down>" . move-text-down)))

;; keep cursor in the same place between sessions
(use-package saveplace
  :init
  (progn
    (save-place-mode 1)))

(use-package smooth-scrolling
  :if window-system
  :ensure t
  :init
  (progn
    (smooth-scrolling-mode)))

(use-package switch-window
  :ensure t
  :defer t
  :bind ("C-x o" . switch-window))

(use-package buffer-move
  :ensure t
  :defer t
  :bind(
        ("C-S-<up>" . buf-move-up)
        ("C-S-<down>" . buf-move-down)
        ("C-S-<left>" . buf-move-left)
        ("C-S-<right>" . buf-move-right)))

(use-package linum-relative
  :ensure t
  :defer f
  :disabled t
  :init
  (progn
    (linum-relative-mode))
  :config
  (progn
    (setq linum-relative-format "%3s ")))

(use-package cmake-ide
  :ensure t
  :defer t
  :init
  (progn
    (cmake-ide-setup)))

(use-package bats-mode
  :ensure t
  :defer t)

(use-package editorconfig
  :ensure t
  :defer t
  :init
  (add-hook 'prog-mode-hook (editorconfig-mode 1))
  (add-hook 'text-mode-hook (editorconfig-mode 1)))

(use-package swift-mode
  :ensure t
  :defer t)

(use-package dockerfile-mode
  :ensure t
  :defer t)

(use-package neotree
  :ensure t
  :defer t
  :bind ("C-c C-o" . neotree-toggle))

(use-package expand-region
  :ensure t
  :defer t
  :bind ("C-c r" . er/expand-region))

(use-package highlight-parentheses
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'highlight-parentheses-mode)))

(use-package conf-mode
  :ensure f
  :defer t
  :mode "hosts/.*")

(use-package indent-tools
  :ensure t
  :defer t
  :bind("C-c i" . indent-tools-hydra/body))

(use-package dired
  :ensure f
  :config
  (progn
    (add-hook 'dired-mode-hook 'dired-omit-mode)
    (setq dired-omit-files "^\\.[^\\.]+\\|^#.*#$\\|^.*~$\\|^\\.$")))

(use-package linum-mode
  :if window-system
  :defer t
  :ensure f
  :init
  (progn
    (setq linum-format " %4d ")
    (add-hook 'find-file-hook 'linum-mode)))

(use-package vdiff
  :ensure t
  :defer t)

(provide 'init-modes)
