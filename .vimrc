set nocompatible              " be iMproved, required
filetype off                  " required

" 设置运行时路径以包括Vundle和initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 或者，通过Vundle应该安装插件的路径调用Vundle #begin('~/some/path/here')

" 中文汉化 版本的 vim doc 
Plugin 'yianwillis/vimcdoc' 

" 适用于alfred youdao翻译的插件 yy 复制到vim寄存器改为 复制到系统剪切板
nnoremap yy "*yy
