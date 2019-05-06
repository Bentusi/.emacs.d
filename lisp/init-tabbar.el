;; -*- coding: utf-8 -*-

(require 'tabbar)
(tabbar-mode)

;;---------------------------------------------------------- 
;; 设置默认主题: 字体, 背景和前景颜色，大小
;;---------------------------------------------------------- 
(set-face-attribute
 'tabbar-default nil
 :background "snow3"
 :foreground "black"
 :height 1.0)

;;---------------------------------------------------------- 
;; 设置左边按钮外观：外框框边大小和颜色
;;---------------------------------------------------------- 
(set-face-attribute
 'tabbar-button nil
 :inherit 'tabbar-default
 :box '(:line-width 1 :color "gray"))

;;---------------------------------------------------------- 
;; 设置当前tab外观：颜色，字体，外框大小和颜色
;;---------------------------------------------------------- 
(set-face-attribute
 'tabbar-selected nil
 :inherit 'tabbar-default
 :foreground "OrangeRed3"
 :background "snow"
 :box '(:line-width 1 :color "snow")
 ;; :overline "black"
 ;; :underline "black"
 :weight 'normal)

;;---------------------------------------------------------- 
;; 设置非当前tab外观：外框大小和颜色
;;---------------------------------------------------------- 
(set-face-attribute
 'tabbar-unselected nil
 :inherit 'tabbar-default
 :box '(:line-width 1 :color "gray"))

;;---------------------------------------------------------- 
;; 设置快捷键
;;---------------------------------------------------------- 
(global-set-key (kbd "C-x <C-up>") 'tabbar-backward-group)
(global-set-key (kbd "C-x <C-down>") 'tabbar-forward-group)
(global-set-key (kbd "C-x <C-left>") 'tabbar-backward-tab)
(global-set-key (kbd "C-x <C-right>") 'tabbar-forward-tab)
(global-set-key (kbd "<C-tab>") 'tabbar-forward-tab)
(global-set-key (kbd "<C-S-tab>") 'tabbar-backward-tab)


(provide 'init-tabbar)
