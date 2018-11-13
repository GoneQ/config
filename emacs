;;(load "/usr/share/tuareg/tuareg-site-file.el")
;;(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
;;(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
;;(autoload 'camldebug "camldebug" "Run the Caml debugger" t)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)



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
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
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
 '(custom-enabled-themes (quote (ample)))
 '(custom-safe-themes
   (quote
    ("0a4d0f951ce441b593a8ebeb63b2f36c93db6051a993a9b8f4774feacb620b2e" "aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "2a7beed4f24b15f77160118320123d699282cbf196e0089f113245d4b729ba5d" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "4b19d61c560a93ef90767abe513c11f236caec2864617d718aa366618133704c" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "d600c677f1777c1e4bfb066529b5b73c0179d0499dd4ffa3f599a0fb0cfbd501" "45f7fec480eb3bdf364cbfcbc8d11ed0228bcf586ce7370fc30a6ce5770f181a" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" default)))
;; '(fci-rule-character-color "#452E2E")
 ;; '(fci-rule-color "#452E2E")
 '(fci-rule-character-color "#0760EF")
 '(fci-rule-width 30)
 '(fci-rule-use-dashes nul)
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(package-selected-packages
   (quote
    (fill-column-indicator dracula-theme ample-theme ample-zen-theme aurora-theme molokai-theme auto-complete)))
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
   ["#555B77" "#E074DB" "#8BE8D8" "#B2DEC1" "#75B5EB" "#9198EB" "#C3C3E8" "#838791"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq x-select-enable-primary t)
(setq x-select-enable-clipboard nil)