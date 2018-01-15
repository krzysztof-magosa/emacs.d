(use-package molokai-theme
  :ensure t)

;; Highlight current line
(use-package hl-line
  :ensure f
  :defer f
  :init
  (progn
    (global-hl-line-mode 1)
    (set-face-background hl-line-face "#333333")))

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
        which-key-idle-delay 0.50))

(set-face-attribute 'default nil
                    :family "CamingoCode"
                    :height 160
                    :weight 'normal)

(when window-system (set-frame-size (selected-frame) 100 25))

(provide 'init-appearance)
