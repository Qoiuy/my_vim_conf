" 打开vim 执行  :call RunYoudao()
" 执行有道翻译 1. 支持参数 2. 翻译结果放在 vim寄存器里
:function RunYoudao(n_line)

	" alfred-youdao shell  环境变量在~/.zshrc里面设置的
	:let ydShell = "~/.vim/codebymyself/alfred-youdao gcd "

	" 清空数据操作
	:call setreg("a", '') " 清空寄存器
    :call setreg("b", '')
    :call setreg("c", '')
    :call setreg("v", '')
    :call setreg("y", '')
    :call setreg("z", '')

	" 取当前行向下n行 的内容
	:let s:curr_line = line(".")
	":let a:n_line = 1
	:let s:body = getline(s:curr_line, s:curr_line+a:n_line)

	" 将取到的数据拼成一个 youdao 翻译的shell
	:let s:cmd = printf("%s", ydShell)
	:for s:line in s:body
		:let s:cmd = printf("%s %s ", s:cmd, s:line)
    :endfor
	":echomsg s:cmd

	" 使用alfred-youdao 插件翻译出来内容 有道参数从本地电脑环境变量里面读取
	" callback 用法详见 :help job-callback
	:let s:ob = job_start(["sh", "-c", s:cmd], {"callback": "HandlerYoudaoResult" })
	":echomsg s:ob

:endfunction

" HandlerYoudaoResult 有道翻译结果的处理
:function HandlerYoudaoResult (channel, msg)

    :echomsg a:msg

    " golang代码里 print \n 一次 调用改方法一次
    ":echomsg "n次\n"

    " 将翻译结果写入到寄存器
    :call setreg("a", printf("%s\n", a:msg), "a")

:endfunction

nnoremap <expr> yy ':<C-U>call RunYoudao(' . v:count . ')<CR>' . v:count . 'jo<Esc>'
nmap <Leader>y "ap
