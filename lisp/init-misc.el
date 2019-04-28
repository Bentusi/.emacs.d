;;; Commentary:
;;
;; Misc configurations.
;;

;;; Code:


(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
;; (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

(global-set-key [C-left] 'windmove-left)
(global-set-key [C-right] 'windmove-right)
(global-set-key [C-up] 'windmove-up)
(global-set-key [C-down] 'windmove-down)
(global-unset-key [S-left])
(global-unset-key [S-right])
(global-unset-key [S-up])
(global-unset-key [S-down])

;; Copy whole line
;; ‘M-w’ copies the current line when the region is not active, and
;; ‘C-w’ deletes it.
(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy the current line."
  (interactive
   (if mark-active
       (list (region-beginning) (region-end))
     (progn
       (message "Current line is copied.")
       (list (line-beginning-position) (line-beginning-position 2))))))

(defadvice kill-region (before slick-copy activate compile)
  "When called interactively with no active region, cut the current line."
  (interactive
   (if mark-active
       (list (region-beginning) (region-end))
     (progn
       (list (line-beginning-position) (line-beginning-position 2))))))

(load "~/.emacs.d/site-lisp/tuareg/tuareg.el")

;; Windows 10 不能输入汉字解决
(when (and (string-match "GNU" (emacs-version))
           (string= system-type "windows-nt"))
  (w32-send-sys-command #xf000))

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)


(provide 'init-misc)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-misc.el ends here
