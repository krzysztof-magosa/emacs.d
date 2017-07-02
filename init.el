;; -*- no-byte-compile: t -*-

;; Disable garbage collector for faster startup
(setq gc-cons-threshold most-positive-fixnum)

;; Avoid outdated byte-compiled files
(setq load-prefer-newer t)

;; Customisations
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file) (load custom-file))

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
(require 'init-osx)
(require 'init-modes)
(require 'init-ruby)
(require 'init-python)
(require 'init-php)
(require 'init-web)
(require 'init-unix)
(require 'init-flycheck)
(require 'init-mgmt)
(require 'init-other)
(require 'init-keyboard)
(require 'init-appearance)
(require 'init-aliases)
(require 'init-cheatsheet)

;; Set reasonable garbage collector threshold to do not hit long pauses
(setq gc-cons-threshold (* 1024 1024 4))
