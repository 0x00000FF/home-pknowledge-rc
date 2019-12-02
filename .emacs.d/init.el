  ; P.Knowledge's Emacs
  ; init.el
  ; ===============================================

  ; disable menu, welcome to emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

  (setq inhibit-startup-screen t)
  (menu-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil neotree phps-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

  (require 'neotree)
  (add-hook 'neotree-mode-hook
  	  (lambda ()
  	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
  	    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
  	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
  	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
  	    (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
  	    (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
  	    (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
  	    (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
  	                    (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))

  (setq neo-smart-open t)
  (setq neo-theme 'icons)

  (global-set-key [f8] 'neotree-toggle)

  (require 'evil)
  (evil-mode 1)
