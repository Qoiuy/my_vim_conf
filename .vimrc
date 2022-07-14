" 关闭兼容模式
set nocompatible              " be iMproved, required

filetype off                  " required

syntax   on

" 设置运行时路径以包括Vundle和initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 或者，通过Vundle应该安装插件的路径调用Vundle #begin('~/some/path/here')

" 中文汉化 版本的 vim doc 
Plugin 'yianwillis/vimcdoc' 

" go 主要插件
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plugin 'dgryski/vim-godef'
" 配色方案
" colorscheme one 
" plugin 安装之后执行 ln -s ~/.vim/bundle/vim-one/colors/one.vim ~/.vim/colors/one.vim
Plugin 'rakr/vim-one'
 
"所有插件都应该在这一行之前 
call vundle#end()

"==============================================================================

" 适用于alfred youdao翻译的插件 yy 复制到vim寄存器改为 复制到系统剪切板
"1. 复制n行到系统剪切板 参考vim实用技巧。"*yy
"2. 向下n行 参考 https://www.thinbug.com/q/37216417 文章 下的评论 <c-u> 实现
"3. 插入一个新行
"nnoremap <expr> yy ':<C-U>normal "*y' . v:count . 'y' . v:count . 'jO<CR>i'


"==============================================================================
" golang 源码阅读
" 转自链接：https://learnku.com/articles/24924

set rnu " 设置行号
set cursorline "突出显示当前行
set cursorcolumn " 突出显示当前列
set showmatch " 显示括号匹配

" 定义快捷键的前缀，即<Leader>
let mapleader=";" 

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
"vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
"nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
nmap <Leader>y "ap


"====================================================================
" 主题配色 

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors

" 配色方案, 可以从上面插件安装中的选择一个使用 
" TODO 删除
colorscheme one " 主题
set background=dark


" golang 源码阅读
" 转自链接：https://learnku.com/articles/24924

"==============================================================================
