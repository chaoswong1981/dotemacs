## 安装

在新系统的~/.emacs.d/init.el里增加下面的代码即可：
```
(defconst user-emacs-directory
  (file-name-directory
   (file-chase-links
    (expand-file-name "d:/mwork/dotemacs/" )))
  "The giant turtle on which the world rests.")
(load-file (expand-file-name "init.el" user-emacs-directory)
```
