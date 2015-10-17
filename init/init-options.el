;; always use spaces and not tabs to indent code
(setq-default indent-tabs-mode nil)

;; don't display welcome message
(setq inhibit-startup-message t)

;; don't show menu bar
(menu-bar-mode -1)

;; be more interactive ;)
;;(ido-mode 1)

;; show line number
(global-linum-mode 1)
(setq linum-format "%4d ")

;; display column number in status bar
(setq column-number-mode t)

;; show matching pairs of parentheses
(show-paren-mode 1)
(setq show-paren-style 'expression)
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

(when (eq system-type 'darwin)
  (when (file-exists-p "/usr/local/bin/gls")
    (setq insert-directory-program "/usr/local/bin/gls")
    (setq dired-listing-switches "-aBhl --group-directories-first")))

(provide 'init-options)
