(setq gc-cons-threshold (* 128 1024 1024))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; install use-package if needed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package benchmark-init
  :ensure t)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'init-options)
(require 'bind-key)
(require 'init-company)
(require 'init-git)
(require 'init-helm)
(require 'init-osx)
(require 'init-modes)
(require 'init-ruby)
(require 'init-mgmt)
(require 'init-other)
(require 'init-keyboard)
(require 'init-appearance)
(require 'init-aliases)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
