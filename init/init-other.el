;; snippets
(use-package yasnippet
  :ensure t
  :defer t
  :commands yas-global-mode
  :init
  (progn
    (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
    (add-hook 'c-mode-hook 'yas-global-mode)
    (add-hook 'c++-mode-hook 'yas-global-mode)
    (add-hook 'sh-mode-hook 'yas-global-mode)
    (add-hook 'ruby-mode-hook 'yas-global-mode)
    (add-hook 'php-mode-hook 'yas-global-mode))) ; just for php

;; edit symbol in multiple places in the same time
(use-package iedit
  :ensure t
  :defer t
  :bind("C-c ;" . iedit-mode))

(use-package semantic
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'c-mode-common-hook 'semantic-mode))
  :config
  (progn
    ;; reparse opened buffers
    (global-semantic-idle-scheduler-mode 1)
    (global-semanticdb-minor-mode 1)))

(use-package password-generator
  :ensure t
  :defer t)

;; profiler for startup
(use-package esup
  :ensure t
  :defer t)

(provide 'init-other)
