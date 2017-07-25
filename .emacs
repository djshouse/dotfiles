(package-initialize)


;; variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" default)))
 '(delete-selection-mode t)
 '(dired-use-ls-dired nil)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-install-selected-packages
   (quote
    (expand-region markdown-mode company-anaconda anaconda-mode f s dash pythonic material-theme elpy multi-term exec-path-from-shell cl-generic hydra spinner paradox request websocket ein multiple-cursors)))
 '(package-selected-packages
   (quote
    (cl-generic ein hydra multiple-cursors paradox request spinner websocket anaconda-mode company-anaconda dash elpy expand-region f markdown-mode material-theme multi-term pythonic s exec-path-from-shell)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))


;; packages and hooks
(when (memq window-system '(mac ns))
(exec-path-from-shell-initialize))
(electric-pair-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'find-file-hook 'linum-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))


;; keyboard mappings and keybindings
(setq mac-control-modifier 'super)
(setq mac-command-modifier 'control)
(setq mac-option-modifier 'meta)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-\\") 'change-inner)
(with-eval-after-load "multi-term"
  (add-to-list 'term-unbind-key-list "C-f")
  (add-to-list 'term-unbind-key-list "M-f")
  (add-to-list 'term-unbind-key-list "C-b")
  (add-to-list 'term-unbind-key-list "M-b")
  (add-to-list 'term-unbind-key-list "C-w")
  (add-to-list 'term-unbind-key-list "C-a")
  (add-to-list 'term-unbind-key-list "C-e"))


;; faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 135 :family "Monaco")))))
