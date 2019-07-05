;; -*- coding: utf-8 -*-

(require 'awesome-tab)
(awesome-tab-mode t)

;;----------------------------------------------------------
;; 设置快捷键
;;----------------------------------------------------------

(cond
 (sys/win32p
  (global-set-key (kbd "C-x <C-up>"   ) 'awesome-tab-backward-group)
  (global-set-key (kbd "C-x <C-down>" ) 'awesome-tab-forward-group )
  (global-set-key (kbd "C-x <C-left>" ) 'awesome-tab-backward-tab)
  (global-set-key (kbd "C-x <C-right>") 'awesome-tab-forward-tab))

 (sys/mac-x-p
  (global-set-key (kbd "<s-up>"   ) 'awesome-tab-backward-group)
  (global-set-key (kbd "<s-down>" ) 'awesome-tab-forward-group )
  (global-set-key (kbd "<s-left>" ) 'awesome-tab-backward-tab)
  (global-set-key (kbd "<s-right>") 'awesome-tab-forward-tab)))

(global-set-key (kbd "<C-tab>"      ) 'awesome-tab-forward-tab)
(global-set-key (kbd "<C-S-tab>"    ) 'awesome-tab-backward-tab)

(setq awesome-tab-style "box")

(provide 'init-tab)
