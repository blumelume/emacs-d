(use-package dashboard
  :init
  (setq dashboard-banner-logo-title "Welcome to Emacs!")
  ;; (setq dashboard-startup-banner [VALUE])
  (setq dashboard-center-content t) ; centering content
  (add-hook 'after-init-hook 'dashboard-refresh-buffer)
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  )

(setq initial-buffer-choice 'dashboard)

(provide 'setup-dashboard)
