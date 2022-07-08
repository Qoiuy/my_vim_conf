" 获取n 行数据 并打印出来
" 打开vim 执行  :call GetNLine()
:function GetNLine()
	:let s:lin = line(".") 
	:echomsg "当前是第" s:lin "行" 
	:echomsg getline(s:lin,s:lin+4)
:endfunction

