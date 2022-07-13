
" 打开vim 执行  :call RunYoudao()
" 执行有道翻译
:function RunYoudao()
	" alfred-youdao shell  环境变量在~/.zshrc里面设置的
	:let ydShell = "~/.vim/codebymyself/alfred-youdao gcd "

	" 取当前行向下3行 的内容
	:let s:line_number = line(".")
	:let s:nnumber = 3
	:let s:body = getline(s:line_number, s:line_number+s:nnumber)

	" 将取到的数据拼成一个 youdao 翻译的shell
	:let s:cmd = printf("%s", ydShell)
	:for s:line in s:body 
		:let s:cmd = printf("%s %s ", s:cmd, s:line)
        :endfor
	:echomsg s:cmd
	
	" 使用alfred-youdao 插件翻译出来内容 有道参数从本地电脑环境变量里面读取
	:let s:ob = job_start(["sh", "-c", s:cmd], {"callback": "MyHandler"})
	:echomsg s:ob

:endfunction


func! MyHandler (channel, msg)
 "   echomsg a:msg
  "  echo a:msg
endfunc
