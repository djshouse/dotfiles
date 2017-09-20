(package-initialize)


;; variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" default)))
 '(delete-selection-mode t)
 '(dired-use-ls-dired nil)
 '(ein:notebook-modes
   (quote
    (ein:notebook-multilang-mode ein:notebook-python-mode ein:notebook-plain-mode)))
 '(fci-rule-color "#37474f")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-install-selected-packages
   (quote
    (expand-region markdown-mode company-anaconda anaconda-mode f s dash pythonic material-theme elpy multi-term exec-path-from-shell cl-generic hydra spinner paradox request websocket ein multiple-cursors)))
 '(package-selected-packages
   (quote
    (change-inner ace-window magit theme-changer zenburn-theme color-theme-sanityinc-tomorrow color-theme-solarized solarized-theme edbi cl-generic ein hydra multiple-cursors paradox request spinner websocket anaconda-mode company-anaconda dash elpy expand-region f markdown-mode material-theme multi-term pythonic s exec-path-from-shell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-bind-key-alist
   (quote
    (("C-c C-c" . term-interrupt-subjob)
     ("C-c C-e" . term-send-esc)
     ("C-p" . previous-line)
     ("C-n" . next-line)
     ("C-s" . isearch-forward)
     ("C-r" . isearch-backward)
     ("C-m" . term-send-return)
     ("C-y" . term-paste)
     ("M-f" . term-send-forward-word)
     ("M-b" . term-send-backward-word)
     ("M-o" . term-send-backspace)
     ("M-p" . term-send-up)
     ("M-n" . term-send-down)
     ("M-M" . term-send-forward-kill-word)
     ("M-N" . term-send-backward-kill-word)
     ("<C-backspace>" . term-send-backward-kill-word)
     ("M-r" . term-send-reverse-search-history)
     ("M-d" . term-send-delete-word)
     ("M-," . term-send-raw)
     ("M-." . comint-dynamic-complete)
     ("C-c C-z" . term-stop-subjob))))
 '(term-unbind-key-list
   (quote
    ("C-e" "C-a" "C-w" "M-b" "C-b" "M-f" "C-z" "C-f" "C-x" "C-c" "C-h" "C-y" "<ESC>")))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))


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
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)
(global-set-key (kbd "C-x o") 'ace-window)
(with-eval-after-load "multi-term"
  (add-to-list 'term-unbind-key-list "C-f")
  (add-to-list 'term-unbind-key-list "M-f")
  (add-to-list 'term-unbind-key-list "C-b")
  (add-to-list 'term-unbind-key-list "M-b")
  (add-to-list 'term-unbind-key-list "C-w")
  (add-to-list 'term-unbind-key-list "C-a")
  (add-to-list 'term-unbind-key-list "C-e"))

;; theme changer
(setq calendar-location-name "Seattle, WA") 
(setq calendar-latitude 47.61)
(setq calendar-longitude -122.33)
(require 'theme-changer)
(change-theme 'sanityinc-tomorrow-day 'zenburn)
(put 'upcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; magit and tramp
(require 'tramp)
(add-to-list 'tramp-remote-path "/apollo/env/SDETools/bin")
