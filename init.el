
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(package-selected-packages
   (quote
    (better-shell material-theme better-defaults magit elpy exec-path-from-shell zenburn-theme lua-mode pallet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Theme
;; https://github.com/bbatsov/zenburn-emacs
(load-theme 'material t)
(set-cursor-color "firebrick")


;; Don't show startup screen
(setq inhibit-startup-screen t)


;; Show keystrokes
(setq echo-keystrokes 0.02)

;;Path 
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;; Git
(require 'magit)
(eval-after-load 'magit
  (progn '(global-set-key (kbd "C-x g") 'magit-status)))


(elpy-enable)

;; Keyboard Bindings
(global-set-key [(control tab)] 'other-window)
(global-set-key (kbd "C-`") 'eshell)
