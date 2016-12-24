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
(add-to-list 'exec-path "/opt/homebrew/bin")

(require 'init-options)
(require 'bind-key)
(require 'init-company)
(require 'init-git)
(require 'init-helm)
(require 'init-osx)
(require 'init-modes)
(require 'init-ruby)
(require 'init-python)
(require 'init-mgmt)
(require 'init-other)
(require 'init-keyboard)
(require 'init-appearance)
(require 'init-aliases)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
