" 打开vim 执行  :call HelloVimJobFunc()
" 能看到 helle vim
" 执行:message 能看来历史执行记录 使用方法参考 https://zhuanlan.zhihu.com/p/308170366
function HelloVimJobFunc()
	:let s:ob = job_start(["/bin/sh", "-c", "echo hello vim"], {"callback": "MyHandler"})
	:echo s:ob
:endfunction


func! MyHandler (channel, msg)
    echomsg a:msg
endfunc
