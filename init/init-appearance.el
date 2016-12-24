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
(use-package moe-theme
  :ensure t
  :config
  (progn
    (moe-dark)))

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
    (set-face-background 'highlight-current-line-face "#333333"))
  :init
  (progn
    (add-hook 'find-file-hook 'highlight-current-line-minor-mode)))

(use-package highlight-indentation
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'highlight-indentation-mode)
    (add-hook 'c++-mode-hook (lambda () (setq highlight-indentation-offset 2)))))

(use-package spaceline
  :ensure t
  :config
  (progn
    (require 'spaceline-config)
    (spaceline-spacemacs-theme)
    (spaceline-helm-mode)
    (spaceline-toggle-minor-modes-off)))

(set-face-attribute 'default nil
                    :family "Source Code Pro for Powerline"
                    :height 130
                    :weight 'normal)

(provide 'init-appearance)
