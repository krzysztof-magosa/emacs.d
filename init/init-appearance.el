(use-package gruvbox-theme
  :ensure t
  :defer t
  :init
  (load-theme 'gruvbox-dark-hard t))

(use-package highlight-symbol
  :ensure t
  :defer t
  :bind("C-c s" . highlight-symbol)
  :config
  (setq-default highlight-symbol-idle-delay 1.0)
  :init
  (add-hook 'prog-mode-hook 'highlight-symbol-mode))

(use-package highlight-current-line
  :ensure t
  :defer t
  :config
  (progn
    (set-face-background 'highlight-current-line-face "#202020"))
  :init
  (progn
    (add-hook 'find-file-hook 'highlight-current-line-minor-mode)))

(use-package highlight-indentation
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'highlight-indentation-mode)
    (add-hook 'prog-mode-hook 'highlight-indentation-current-column-mode)
    (add-hook 'yaml-mode-hook 'highlight-indentation-mode)
    (add-hook 'yaml-mode-hook 'highlight-indentation-current-column-mode)
    (add-hook 'c++-mode-hook (lambda () (setq highlight-indentation-offset 2)))))

(use-package smart-mode-line
  :ensure t
  :defer t
  :init
  (progn
    (setq sml/theme 'respectful)
    (setq sml/no-confirm-load-theme t)
    (sml/setup)))

(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  :config
  (which-key-setup-side-window-right-bottom)
  (setq which-key-sort-order 'which-key-local-then-key-order
        which-key-side-window-max-width 0.33
        which-key-idle-delay 0.05))

(set-face-attribute 'default nil
                    :family "CamingoCode"
                    :height 160
                    :weight 'normal)

(when window-system (set-frame-size (selected-frame) 100 25))

(provide 'init-appearance)
