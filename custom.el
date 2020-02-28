;;; custom.el --- user customization file    -*- no-byte-compile: t -*-
;;; Commentary:
;;;       Copy custom-template.el to custom.el and change the configurations, then restart Emacs.
;;;       Put your own configurations in custom-post.el to override default configurations.
;;; Code:

;; (setq centaur-logo nil)                        ; Logo file or nil (official logo)
(setq centaur-full-name "Jiang Wei")           ; User full name
(setq centaur-mail-address "jiangwei.chn@gmail.com")   ; Email address
;; (setq centaur-proxy "127.0.0.1:1080")          ; Network proxy
(setq centaur-package-archives 'tuna)   ; Package repo:local melpa, melpa-mirror, emacs-china netease or tuna
(setq centaur-theme 'doom)                  ; Color theme: default, classic, doom, dark, light or daylight
(setq centaur-dashboard nil)                   ; Use dashboard at startup or not: t or nil
;; (setq centaur-lsp 'eglot)                      ; Set LSP client: lsp-mode, eglot or nil
;; (setq centaur-chinese-calendar nil)            ; Use Chinese calendar or not: t or nil
;; (setq centaur-benchmark t)                     ; Enable initialization benchmark or not: t or nil

;; For Emacs devel
;; (setq package-user-dir (locate-user-emacs-file (format "elpa-%s" emacs-major-version)))
;; (setq desktop-base-file-name (format ".emacs-%s.desktop" emacs-major-version))
;; (setq desktop-base-lock-name (format ".emacs-%s.desktop.lock" emacs-major-version))

;; Fonts
(when (display-graphic-p)
   ;; Set default fonts
   (if (member "Source Code Variable" (font-family-list))
       (set-face-attribute 'default nil :font "Source Code Variable"))

   ;; Specify fonts for all unicode characters
   (if (member "Cambria Math" (font-family-list))
       (set-fontset-font t 'unicode "Cambria Math" nil 'prepend))
  (cond
   (sys/win32p
    (set-face-attribute 'default nil :height 140)

    ;; Specify fonts for all unicode characters
    (if (member "Segoe UI Symbol" (font-family-list))
        (set-fontset-font t 'unicode "Segoe UI Symbol" nil 'prepend))

    ;; Specify fonts for Chinese characters
    (if (member "微软雅黑" (font-family-list))
        (set-fontset-font t '(#x4e00 . #x9fff) "微软雅黑")))

   (sys/mac-x-p
    (set-face-attribute 'default nil :height 180)

    ;; Specify fonts for Chinese characters
    (if (member "Hiragino Sans GB" (font-family-list))
        (set-fontset-font t '(#x4e00 . #x9fff) "Hiragino Sans GB")))

   (sys/linux-x-p
    (set-face-attribute 'default nil :height 130)

    (if (member "Noto Sans CJK SC" (font-family-list))
        (set-fontset-font t '(#x4e00 . #x9fff) "Noto Sans CJK SC")))
   ))

;; Misc.
;; (setq confirm-kill-emacs 'y-or-n-p)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; custom.el ends here
