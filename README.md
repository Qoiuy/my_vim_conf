我的vim配置

这些年 一个人 风也过 雨也走 编程才开始入门 

将本文件复制到 /user/.vim
ln .vimrc (ln -s ~/.vim/.vimrc ~/.vimrc )

# goland 使用vim 看源码必备的一条命令 
ln -s ~/.vim/.ideavimrc ~/.ideavimrc
里面做了一个适配 https://z9zo35xftk.feishu.cn/docx/doxcnqOf58NkzP7VA39a8lvXzMe


打开vim 执行 :PluginInstall
手动安装 vimdoc:
我的实际使用情况时 vimdoc 下载下来了 但是没有生效 
需要执行  /user/.vim/bundle/vimcdoc/vimcdoc.sh -i 安装
