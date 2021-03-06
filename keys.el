(global-set-key [(control tab)] 'other-window)
(global-set-key [(control b)] 'ido-switch-buffer)
(global-set-key (kbd "s-1") 'call-last-kbd-macro)
(global-set-key (kbd "C-`") 'new-shell)
(global-set-key [(f1)] 'man)

(global-set-key [(control f9)] 'grep-find)


;; Mac key bindings
(global-unset-key [s-left])
(global-unset-key [s-right])
(global-unset-key [s-down])
(global-unset-key [s-up])
(global-set-key [s-left] 'beginning-of-line)
(global-set-key [s-right] 'end-of-line)
(global-set-key [s-up] 'scroll-down-command)
(global-set-key [s-down] 'scroll-up-command)


(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line) 

;;(global-set-key (kbd "<C-s-tab>") ')


;; Smarter shell completion
(define-key shell-mode-map [(control up)] 'comint-previous-matching-input-from-input)
(define-key shell-mode-map [(control down)] 'comint-next-matching-input-from-input)

(global-set-key "\M-\\" 'shell-command-on-region-inplace)



(provide 'keys)
