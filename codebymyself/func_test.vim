" 打开vim 执行  :call HelloVim()
:function HelloVim()
	:let i = 1
	:while i < 5
		:echo "count is" i
		:let i += 1
	:endwhile
endfunction
