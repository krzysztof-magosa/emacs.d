;; flatland-theme
;; ujelly-theme
;; molokai-theme
;; twilight-bright-theme
;; material-theme
;; flatland-theme
;; moe-theme
;; gruvbox-theme
;; (use-package afternoon-theme
;;   :ensure t
;;   :init
;;   (progn
;;     (if (daemonp)
;;         (add-hook 'after-make-frame-functions
;;                   (lambda (frame)
;;                     (select-frame frame)
;;                     (load-theme 'afternoon t)))
;;       (load-theme 'afternoon t))))
(use-package monokai-theme
  :ensure t)

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
    (set-face-background 'highlight-current-line-face "#222222"))
  :init
  (progn
    (add-hook 'find-file-hook 'highlight-current-line-minor-mode)))

(use-package highlight-indentation
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'highlight-indentation-mode)
    (add-hook 'yaml-mode-hook 'highlight-indentation-mode)
    (add-hook 'c++-mode-hook (lambda () (setq highlight-indentation-offset 2)))
    (add-hook 'yaml-mode-hook (lambda () (setq highlight-indentation-offset (symbol-value 'yaml-indent-offset))))))

(use-package spaceline
  :ensure t
  :config
  (progn
    (require 'spaceline-config)
    (spaceline-emacs-theme)
    (spaceline-helm-mode)
    (spaceline-toggle-persp-name-off)
    (spaceline-toggle-workspace-number-off)
    (spaceline-toggle-window-number-off)
    (spaceline-toggle-evil-state-off)
    (spaceline-toggle-anzu-off)
    (spaceline-toggle-auto-compile-off)
    (spaceline-toggle-buffer-modified-on)
    (spaceline-toggle-buffer-size-off)
    (spaceline-toggle-buffer-id-on)
    (spaceline-toggle-remote-host-on)
    (spaceline-toggle-major-mode-off)
    (spaceline-toggle-flycheck-error-on)
    (spaceline-toggle-flycheck-warning-on)
    (spaceline-toggle-flycheck-info-off)
    (spaceline-toggle-minor-modes-off)
    (spaceline-toggle-process-off)
    (spaceline-toggle-erc-track-off)
    (spaceline-toggle-version-control-on)
    (spaceline-toggle-org-pomodoro-off)
    (spaceline-toggle-org-clock-off)
    (spaceline-toggle-nyan-cat-off)
    (spaceline-toggle-battery-off)
    (spaceline-toggle-which-function-off)
    (spaceline-toggle-python-pyvenv-off)
    (spaceline-toggle-python-pyenv-off)
    (spaceline-toggle-paradox-menu-off)
    (spaceline-toggle-selection-info-off)
    (spaceline-toggle-input-method-off)
    (spaceline-toggle-buffer-encoding-abbrev-off)
    (spaceline-toggle-point-position-off)
    (spaceline-toggle-line-column-on)
    (spaceline-toggle-global-on)
    (spaceline-toggle-buffer-position-on)
    (spaceline-toggle-hud-off)))

(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-mode t)))

(set-face-attribute 'default nil
                    :family "Anka/Coder"
                    :height 160
                    :weight 'normal)

(when window-system (set-frame-size (selected-frame) 100 25))

(provide 'init-appearance)
