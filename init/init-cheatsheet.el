(provide 'init-cheatsheet)

(use-package cheatsheet
  :ensure t
  :defer t
  :bind("C-c h h" . cheatsheet-show)
  :config
  (progn
    (cheatsheet-add-group 'Common
                          '(:key "C-x C-c" :description "Quit emacs")
                          '(:key "M-x" :description "Run Emacs Lisp command")
                          '(:key "M-!" :description "Run shell command")
                          '(:key "C-x-f" :description "Open file")
                          '(:key "C-x C-s" :description "Save current file")
                          '(:key "C-s C-w" :description "Save current file as...")
                          '(:key "C-x s" :description "Save all files")
                          '(:key "C-x b" :description "Switch buffer")
                          '(:key "C-x C-b" :description "Show buffer list")
                          '(:key "C-g" :description "Abort current operation")
                          '(:key "C-k" :description "Cut rest of the line")
                          '(:key "C-/" :description "Undo")
                          '(:key "C-g C-/" :description "Redo")
                          '(:key "C-w" :description "Cut")
                          '(:key "M-w" :description "Copy")
                          '(:key "C-y" :description "Paste")
                          '(:key "C-s" :description "Search")
                          '(:key "M-v" :description "Page up")
                          '(:key "C-v" :description "Page down")
                          '(:key "M-<" :description "Top")
                          '(:key "M->" :description "Bottom")
                          '(:key "C-a" :description "Home")
                          '(:key "C-e" :description "End")
                          '(:key "M-C-s" :description "Regex search")
                          '(:key "M-%" :description "Find and replace")
                          '(:key "M-s o" :description "Show occurrences")
                          '(:key "C-M-\\" :description "Indent selection")
                          '(:key "C-x o" :description "Go to another window")
                          '(:key "C-x 0" :description "Close current window")
                          '(:key "C-x 1" :description "Close other windows")
                          '(:key "C-x 2" :description "Horizontal split")
                          '(:key "C-x 3" :description "Vertical split")
                          '(:key "C-space" :description "Region selection")
                          '(:key "C-x h" :description "Mark whole buffer")
                          '(:key "C-c p f" :description "Find file in project")
                          '(:key "C-c p F" :description "Find file in all known projects")
                          '(:key "C-c p d" :description "Find directory in project")
                          '(:key "C-c p a" :description "Switch between main/header file")
                          '(:key "C-c p b" :description "Buffers in project")
                          '(:key "C-c p s g" :description "Find symbol at cursor")
                          '(:key "C-c p h" :description "Helm Projectile UI")
                          '(:key "C-c g" :description "Git grep")
                          '(:key "C-<arrow>" :description "Go to another window by direction")
                          '(:key "C-c j" :description "Jump to line")
                          '(:key "C-c ;" :description "Multi cursor edit")
                          '(:key "C-c C-c" :description "Comment/uncomment region")
                          '(:key "C-c 1" :description "Show flycheck errors in Helm")
                          '(:key "C-h f" :description "Describe function")
                          '(:key "C-c C-o" :description "Toggle NeoTree")
                          '(:key "M-." :description "Go to tag at cursor")
                          '(:key "C-c r" :description "Expand region")
                          '(:key "C-c s" :description "Highlight symbol"))))