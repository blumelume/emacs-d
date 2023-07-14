;; hooks
(which-key-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(add-hook 'emacs-startup-hook 'treemacs)
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key [f8] 'neotree-toggle)

;; setting left-alt as meta & right-alt as alt
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

;;(desktop-save-mode 1)

(provide 'setup-general)
