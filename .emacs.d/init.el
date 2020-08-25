;;(server-start)
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;(global-set-key (kbd "<C-return>") 'ansi-term)
(setq scroll-conservatively 100)

(global-hl-line-mode t)
(global-prettify-symbols-mode t) 

(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package which-key
  :ensure t
  :init (which-key-mode))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default)))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (python . t) (shell . t))))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
   (quote
    (org-alert magit switch-window org-bullets material-theme which-key use-package))))
  (require 'org-habit)
  (setq org-habit-graph-column 80)
  (setq org-habit-following-days 0)
  (setq org-habit-preceding-days 30)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "ADBO" :family "Fira Code Retina"))))
 '(italic ((t (:slant italic :family "Deja Vu Sans")))))
