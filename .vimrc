set nocompatible              " be iMproved, required
filetype off                  " required

" 设置运行时路径以包括Vundle和initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 或者，通过Vundle应该安装插件的路径调用Vundle #begin('~/some/path/here')

" 中文汉化 版本的 vim doc 
Plugin 'yianwillis/vimcdoc' 

" 适用于alfred youdao翻译的插件 yy 复制到vim寄存器改为 复制到系统剪切板
"1. 复制n行到系统剪切板 参考vim实用技巧。"*yy
"2. 向下n行 参考 https://www.thinbug.com/q/37216417 文章 下的评论 <c-u> 实现
"3. 插入一个新行
nnoremap <expr> yy ':<C-U>normal "*y' . v:count . 'y' . v:count . 'jO<CR>i'


