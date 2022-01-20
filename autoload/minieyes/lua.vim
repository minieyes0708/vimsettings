function! minieyes#lua#call(funcname, ...)
    call call(luaeval(a:funcname), a:000)
endfunction
