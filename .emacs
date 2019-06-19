;;(load "/usr/share/tuareg/tuareg-site-file.el")
;;(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
;;(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
;;(autoload 'camldebug "camldebug" "Run the Caml debugger" t)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-hook 'emacs-startup-hook
          (lambda ()
            (load-theme 'molokai)
                ))

(setq vc-follow-symlinks nil)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face ; show ...
                         tabs tab-mark ; the tabulations,
                         lines-tail ; lines too long (> fill-column characters),
                         trailing)) ; and trailing spaces



;;Backup emacs
(setq backup-directory-alist '(("." . "~/afs/emacs/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
        )


(setq c-basic-offset 4 ; spaces of indentation
      c-default-style "bsd" ; sort of fits the coding style
      fill-column 80)


(global-whitespace-mode)
(global-linum-mode t)
(column-number-mode)


(setq mode-require-final-newline nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


(require 'auto-complete)
(global-auto-complete-mode t)
(define-key ac-mode-map (kbd "RET") nil)
(define-key ac-completing-map (kbd "RET") nil)
(define-key ac-completing-map [ret] nil)


(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "C-SPC") 'company-complete)



;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path "~/.emacs.d/tiger/")

;; load the packaged named xyz.
(load "tiger") ;; best not to include the ending “.el” or “.elc”
(autoload 'tiger-mode "tiger" "Load tiger-mode" t)
(add-to-list 'auto-mode-alist '("\\.ti[gh]$" . tiger-mode))



;; Making autocompletion faster...
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

;; (require 'clang-format)
;; (global-set-key [C-M-tab] 'clang-format-region)

(require 'fill-column-indicator)
(setq fci-rule-column 80)
(add-hook 'after-change-major-mode-hook 'fci-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#414E63" "#CC71D1" "#88D6CB" "#C79474" "#76A2D1" "#4A4B6B" "#96A9D6" "#8E95A3"])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(custom-safe-themes
   (quote
    ("1f82d77255651c959ef7e1d41d59dd63e2e175cf054b89159679f2f70f9c1f4a" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" default)))
 '(fci-rule-character-color "#0760EF")
 '(fci-rule-use-dashes nul)
 '(fci-rule-width 30)
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(package-selected-packages
   (quote
    (company-c-headers auto-complete srcery-theme molokai-theme cmake-font-lock fill-column-indicator ample-theme ample-zen-theme aurora-theme)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#262626")))
 '(pos-tip-background-color "#414E63")
 '(pos-tip-foreground-color "#BEC8DB")
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(xterm-color-names
   ["#414E63" "#CC71D1" "#88D6CB" "#C79474" "#76A2D1" "#4A4B6B" "#96A9D6" "#8E95A3"])
 '(xterm-color-names-bright
   ["#555B77" "#E074DB" "#8BE8D8" "#B2DEC1" "#75B5EB" "#9198EB" "#C3C3E8" "#838791"])
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq x-select-enable-clipboard t)