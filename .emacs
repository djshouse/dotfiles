(package-initialize)


;; packages and hooks
(when (memq window-system '(mac ns))
(exec-path-from-shell-initialize))
(electric-pair-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'find-file-hook 'linum-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))


;; mac keyboard mappings and keybindings
(setq mac-control-modifier 'super)
(setq mac-command-modifier 'control)
(setq mac-option-modifier 'meta)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; custom-set-variables was added by Custom.
(custom-set-variables
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" default)))
 '(dired-use-ls-dired nil)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/Documents/PTK/ptkml")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-load-list (quote ((multiple-cursors t))))
 '(package-selected-packages
   (quote
    (company-anaconda anaconda-mode f s dash pythonic material-theme elpy multi-term exec-path-from-shell cl-generic hydra spinner paradox request websocket ein multiple-cursors)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))


;; custom-set-faces was added by Custom.
(custom-set-faces
 '(default ((t (:height 135 :family "Monaco")))))
