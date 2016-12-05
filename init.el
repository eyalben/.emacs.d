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
    (markdown-mode better-shell material-theme better-defaults magit elpy exec-path-from-shell zenburn-theme lua-mode pallet))))
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
(eval-after-load "elpy"
  '(cl-dolist (key '("M-<up>" "M-<down>" "M-<left>" "M-<right>"))
     (define-key elpy-mode-map (kbd key) nil)))


;; Disable word-wrap
(setq-default truncate-lines 1)
(setq x-select-enable-primary nil)
(delete-selection-mode 1)


(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
          user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "keys.el")

;; Load keys the last, in order to override bad key bindings
(require 'keys)

(defalias 'yes-or-no-p 'y-or-n-p)
(setq-default tab-width 4)
;; use space to indent by default
(setq-default indent-tabs-mode nil)

(require 'cc-mode)
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-add-system-include "/usr/include/boost" 'c++-mode)
(semantic-add-system-include "~/linux/kernel")
(semantic-add-system-include "~/linux/include")

(semantic-mode 1)


