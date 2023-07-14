(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(setq-default cursor-type 'bar)

(use-package ctrlf
  :config
  (ctrlf-mode +1))

;; icon config
(setq image-types (cons 'svg image-types))

;; disable welcome-screen
(setq inhibit-startup-screen t)

;; loading theme
(use-package all-the-icons)
;;(setq custom-safe-themes t)   ; Treat all themes as safe
;;(load-theme 'modus-operandi)
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one-light t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  ;;(doom-themes-org-config)
  )

;; dim / focus
(use-package dimmer
  :config
  (dimmer-configure-which-key)
  (dimmer-configure-helm)
  (dimmer-mode t)
  )

(use-package solaire-mode
  :config
  (solaire-global-mode +1)
  )

;; tab-bar
(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))
;; (centaur-tabs-headline-match)

;; enabling powerline
(use-package doom-modeline
  :config
  (doom-modeline-mode 1))

;; editor config
(setq-default indent-tabs-mode t)
(setq tab-width 2)

;; tree-view
(use-package treemacs
  :ensure t)

;; (use-package treemacs-icons-dired
;;   :hook (dired-mode . treemacs-icons-dired-enable-once)
;;   :ensure t)

(use-package treemacs-magit
  :after (treemacs magit)
  :ensure t)

(use-package treemacs-tab-bar ;;treemacs-tab-bar if you use tab-bar-mode
  :after (treemacs)
  :ensure t
  :config (treemacs-set-scope-type 'Tabs))



(provide 'setup-ui)
