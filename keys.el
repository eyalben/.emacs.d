(global-set-key [(control tab)] 'other-window)
(global-set-key [(control b)] 'ido-switch-buffer)
(global-set-key (kbd "s-1") 'call-last-kbd-macro)
(global-set-key (kbd "C-`") 'eshell)

;; Mac key bindings
(global-unset-key [s-left])
(global-unset-key [s-right])
(global-unset-key [s-down])
(global-unset-key [s-up])
(global-set-key [s-left] 'beginning-of-line)
(global-set-key [s-right] 'end-of-line)
(global-set-key [s-up] 'scroll-down-command)
(global-set-key [s-down] 'scroll-up-command)

(provide 'keys)
