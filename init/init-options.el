;; always use spaces and not tabs to indent code
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; don't display welcome message
(setq inhibit-startup-message t)

;; ensure file ends with empty line
(setq require-final-newline t)

;; don't show menu bar
(if (not window-system)
    (menu-bar-mode -1))
;; don't show tool bar
(tool-bar-mode -1)
;; don't show scroll bars
(scroll-bar-mode -1)

;; be more interactive ;)
;;(ido-mode 1)

;; visible bell instead of beeps
(setq visible-bell t)

;; display column number in status bar
(setq column-number-mode t)

;; show matching pairs of parentheses
(show-paren-mode 1)
(setq show-paren-when-point-inside-paren t)
(setq show-paren-when-point-in-periphery t)
(setq show-paren-style 'parenthesis)
(setq show-paren-delay 0)

;; when splitting screen try to put new window on bottom
(setq split-height-threshold 0)
(setq split-width-threshold 0)

;; highlight trailing whitespace
(setq-default show-trailing-whitespace t)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Store backups in separate directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; auto refresh buffers
(global-auto-revert-mode 1)

;; also auto refresh dired
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; show keystrokes in progress
(setq echo-keystrokes 0.1)

;; remove text in active region when inserting new one
(delete-selection-mode 1)

;; automatically opens compressed files
(auto-compression-mode 1)

;; electric indent
(electric-indent-mode 1)
;; electric pair mode (for parens)
(electric-pair-mode 1)

;; start with empty editor
(setq initial-scratch-message "")

;; do not create lock files, i edit all files from one emacs instance
(setq create-lockfiles nil)

(setq c-default-style
      '((c++-mode . "java")
        (other . "java")))

(add-hook 'c++-mode-hook '(lambda ()
                            (setq-local c-basic-offset 2)))

(when (eq system-type 'darwin)
  (when (file-exists-p "/opt/homebrew/bin/gls")
    (setq insert-directory-program "/opt/homebrew/bin/gls")
    (setq dired-listing-switches "-aBhl --group-directories-first")))

;; enable up/down case
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(provide 'init-options)
