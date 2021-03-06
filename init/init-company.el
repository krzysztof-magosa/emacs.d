;; auto complete related stuff
(use-package company
  :ensure t
  :defer t
  :diminish company-mode
  :bind ("M-/" . company-complete-common)
  :config
  (progn
    (setq company-idle-delay nil)
    (add-to-list 'company-backends 'company-shell)
    (add-to-list 'company-backends 'company-jedi)
    (add-to-list 'company-backends '(company-c-headers company-clang))
    (add-to-list 'company-backends 'company-ansible))
;;    (add-to-list 'company-backends 'company-emacs-eclim)
;;    (add-to-list 'company-backends 'company-sourcekit))
;;    (add-to-list 'company-backends 'company-yasnippet))
  :init
  (progn
    (add-hook 'prog-mode-hook 'company-mode)
    (add-hook 'yaml-mode-hook 'company-mode)))

(use-package company-shell
  :ensure t
  :defer t)

(use-package company-ansible
  :ensure t
  :defer t)

(use-package company-sourcekit
  :ensure t
  :defer t)

(use-package company-go
  :ensure t
  :defer t)

(use-package company-jedi
  :ensure t
  :defer t)

(use-package company-c-headers
  :ensure t
  :defer t
  :config
  (progn
    (add-to-list 'company-c-headers-path-system '"/usr/include")
    (add-to-list 'company-c-headers-path-system '"/usr/include/c++/4.2.1")))

(use-package company-quickhelp
  :ensure t
  :defer t
  :disabled t
  :commands company-quickhelp-mode
  :init
  (progn
    (setq company-quickhelp-idle-delay 0.2)
    (add-hook 'after-init-hook 'company-quickhelp-mode)))

(provide 'init-company)
