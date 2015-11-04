;; flatland-theme
;; ujelly-theme
;; molokai-theme
;; twilight-bright-theme
;; material-theme
;; flatland-theme
(use-package moe-theme
  :ensure t
  :config
  (progn
    (load-theme 'moe-dark t)
    (moe-theme-set-color 'blue)
    (powerline-moe-theme)))

(use-package highlight-current-line
  :diminish highlight-current-line-minor-mode
  :ensure t
  :defer t
  :config
  (progn
    (set-face-background 'highlight-current-line-face "#2a2a2a"))
  :init
  (progn
    (add-hook 'find-file-hook 'highlight-current-line-minor-mode)))

(use-package highlight-indentation
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'highlight-indentation-mode)))

(use-package powerline
  :ensure t
  :init
  (progn
    (powerline-default-theme)))

(use-package diminish
  :ensure t)

(set-face-attribute 'default nil
                    :family "Source Code Pro for Powerline"
                    :height 130
                    :weight 'normal)

(provide 'init-appearance)
